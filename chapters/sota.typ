#import "@preview/fletcher:0.5.8" as fletcher: diagram, edge, node
#import "@preview/cetz:0.4.0"
#import "@preview/physica:0.9.5": *
#import "@preview/algorithmic:1.0.3"
#import "@local/ensimag-nificent-thesis:0.1.0": balance
#import algorithmic: algorithm-figure

#let flo(term, color: red) = {
  text(color, box[Flo: #term])
}

= Numerical Simulations of Wave Propagation <numerical-prop>

The study of the propagation of waves in a medium is a well established field pioneered from the work of Newton. The solutions of what are known as the _wave equations_ serve as the basis for many applications in many fields. In the field of seismology, many challenging problems are still open, such as the study of earthquakes and their prediction. In this field, both the simulation of the wave propagation and the reconstruction of the medium properties are of great interest. The @HAWEN software that we use in this report is a library that is designed to solve the wave equation in the frequency domain and treat the quantitative inverse problem for the reconstruction of physical properties from wave measurements. In @hawen-chapter we will give a brief overview of the software and its capabilities. In @hdg-section we will talk about the Hybridizable Discontinuous Galerkin (@HDG) method that is used to solve the problem efficiently and in a scalable manner in the software. This method will serve as the basis for the performance analysis in this work, where we will try to improve the speed of the solution of the wave equation by tackling the bottlenecks in the @HDG pipeline.

== HAWEN <hawen-chapter>

The @HAWEN software is a Fortran-based library designed to simulate the propagation of waves in a given medium (what we will call from now on the _forward problem_) and reconstruct the physical properties of a non-directly accessible medium (the _inverse problem_) @x-HAWEN @x-FloPhD.

In the inverse problem, waves are measured and their properties are used to characterize the medium in which they propagated. This context arises in several fields, with applications ranging from medial imaging, geophysics, helio-seismology, and more. In @hawen-scheme we provide a schematic representation of the steps involved in the solution of the inverse problem in @HAWEN; from here we can notice that optimizing the time necessary for solving the _forward problem_ is key also in reducing the time needed to solve the _inverse problem_. The algorithm follows a classical optimization problem, where we minimize the reconstruction error.

#figure(
  placement: top,
  diagram(
    spacing: (1cm, 0.5cm),
    node-corner-radius: 3pt,
    node-stroke: 0.5pt,
    {
      node((0, 0), [Measured data from acquisition])

      edge((0, 0), (0, 2), "->")

      node(
        (1, 0),
        [Initial models for the physical properties of the medium],
        width: 6cm,
      )

      edge("->")

      node(
        (1, 1),
        [Simulation of the wave propagation using the given properties of the medium],
        width: 6cm,
        fill: green.lighten(80%),
      )

      edge("d,l", "->")

      node(
        (0, 2),
        [Comparison between the observations and the simulations],
        width: 6cm,
        fill: blue.lighten(80%),
      )

      edge("->")

      node((0, 3), [Optimization], width: 6cm, fill: blue.lighten(80%))

      edge("->")

      node(
        (1, 3),
        [Update of the physical properties of the medium],
        width: 6cm,
        fill: blue.lighten(80%),
      )

      edge((1, 3), (1, 1), "->", [next iteration], shift: -10pt)
    },
  ),
  kind: image,
  caption: [Schematic representation of the HAWEN pipeline. In green it's highlighted the *forward problem* and in blue the *inverse problem*. Note that one use case of the software is solving the *forward problem* only.],
) <hawen-scheme>

@HAWEN is designed specifically with large scale problems in mind and it is currently deployed on supercomputers. It leverages a combination of @MPI and OpenMP to achieve a high level of parallelism on @CPU:short. An example of the problems the software is designed for can be seen in @earth-hawen @x-HAWENWebsite, where the @PREM @x-PREM model of our planet is used to simulate the propagation of elastic waves through the Earth.

A specificity of @HAWEN is the usage of the @HDG method @x-HDG for the discretization of the wave equation, which will be covered in more details in @hdg-section. More generally, we know that we can identify three computationally intensive steps in the @HAWEN pipeline:

- The *discretization* step, where the global matrix is built with the @HDG method from each cell of the mesh. In particular this step involves an embarrassingly parallel loop over all cells with local-to-the-cell dense matrix operation for the solution of the @HDG problem.

- The *factorization* step: the linear system that is computed in @hdg-section is solved using a sparse solver, @MUMPS (see @mumps-section for more details), the most expensive operation is really the factorization of the matrix, given that the code relies on a direct solver, rather than an iterative one. Once factorized, the actual solve step is relatively fast. This choice allows solving for multiple right-hand sides relatively cheaply (factorization only has to be performed once).

- The *save* step, where the results of the simulation are saved to disk.

Some specific configurations also highlight other inefficiencies in the code. For example, a known problem, is that the mapping time onto a Cartesian grid currently uses a brute force approach. This results in particularly long mapping times for big 3D elastic benchmarks, but is something that is already being worked on, in particular, using the Barycentric Walk algorithm @x-BaryWalk. This will also not be a focus in our analysis due to it not being used very often in the code.

This work focuses mainly on improving the efficiency of the first two steps. For the first step, the goal will be to reduce the complexity of the matrix creation and offload part it to the @GPU. For the second step, we will explore a new direct sparse solver by NVIDIA, cuDSS (see @cudss-section for more details).


#figure(
  placement: top,
  image("../resources/imgs/global-earth_simu.png"),
  caption: [Propagation of elastic waves in the Earth in three-dimensions, using the PREM Earth models for P- and S-wave speeds, density, and quality factors. The system is comprised of 30 millions of unknowns and used 2.7TB for the matrix factorization. The total computational time was 18 minutes on 1260 cores (90 MPI processes and 14 threads for each MPI process). Courtesy of Florian Faucher.
],
) <earth-hawen>

== Hybridizable Discontinuous Galerkin Methods Applied to the Acoustic Wave Problem <hdg-section>

The software relies on the @HDG method for the discretization of the wave equation in the frequency domain. In the context of acoustic wave propagation, it's defined by the formula

$
  - nabla dot 1/rho nabla p - omega^2 / kappa p = f .
$ <acoustic-wave-equation>

Here the medium is represented by the density $rho$ and the bulk modulus $kappa$ while $f$ represents the source. The angular frequency is represented with $omega$.

To solve numerically the wave propagation problem, one needs to discretize the equation. Several methods exist for solving such @PDE:pl, common ways include:

/ @FDM:pl: a class of numerical methods for solving differential equations by approximating derivatives through finite differences using formulas derived by the Taylor expansion. For example $f'(x)$ can be approximated by $ f'(x) approx (f(x + Delta x) - f(x - Delta x)) / (2 Delta x). $

/ Galerkin Methods: instead of approximating derivatives directly, these methods approximate the solution itself by expressing it as a combination of basis functions and ensuring that the equation holds on average across the whole domain.

In the case of @HAWEN, the domain is discretized into cells which are simplexes. Once the domain is discretized into cells, one approach to solve the @PDE using Galerkin methods would be the @FEM:long technique. As can be seen in @fem-dg-hdg, this method results in a mesh where each triangle's solution are coupled with the neighboring triangle, limiting the potential for concurrent computations.

A first approach to tackle this problem is the usage of @DG:long methods, a class of @FEM:pl using completely discontinuous basis functions which results in embarrassingly high parallel efficiency @x-DiscontinousGalerkin. This characteristic makes it a good target for @GPU acceleration, #cite(<x-GPUDG>, form: "prose") explore this with good success and high occupancy. @DG also enables $frak(p)$-adaptivity, meaning that each cell in a mesh can have a different order, a characteristic that is particularly useful when dealing with complex media. The high computational cost associated with @DG, however, makes it very expensive, compared to traditional methods. To address this issue, @HDG:long (@HDG:short) are introduced.

Compared to traditional @DG methods, @HDG reduces significantly the number of globally coupled @DOF, which can allow for a substantial reduction in the computational cost and memory usage @x-HDG. We see in @fem-dg-hdg, how @HDG introduces additional #lower[@DOF:long] at the border of each cell. By ignoring the inner #lower[@DOF:long] in the global linear system, this method results in a smaller global matrix when using high order basis functions, which results in a more accurate solution.

More specifically, the domain is discretized in the @HDG formulation over the medium $Omega$ using a non overlapping partition. This mesh is denoted $cal(T)$ and is composed of $N$ cells $K$ such that

$
  cal(T) = union.big_(e = 1)^N K_e
$

with their faces $cal(f)$ as

$
  Sigma = union.big_(k = 1)^N_Sigma cal(f)_k .
$

#figure(
  placement: top,
  cetz.canvas(length: 2cm, {
    import cetz.draw: *

    line((0, 0), (1, 0), (0, 1), (0, 0))
    line((0, 1), (1, 1), (1, 0))
    circle((0, 0), radius: .05, fill: blue)
    circle((1, 0), radius: .05, fill: blue)
    circle((0, 1), radius: .05, fill: blue)
    circle((1, 1), radius: .05, fill: blue)
    // content((0, -.2), $alpha_1$)
    // content((1, -.2), $alpha_2$)
    // content((0, 1.2), $alpha_3$)
    // content((1, 1.2), $alpha_4$)
    content((0.5, -0.5), [FEM])

    line((2, -.05), (3, -.05), (2, .95), (2, -.05))
    line((3.1, 0.05), (3.1, 1.05), (2.1, 1.05), (3.1, 0.05))
    circle((2, -.05), radius: .05, fill: blue)
    circle((3, -.05), radius: .05, fill: blue)
    circle((2, .95), radius: .05, fill: blue)
    circle((3.1, 1.05), radius: .05, fill: blue)
    circle((2.1, 1.05), radius: .05, fill: blue)
    circle((3.1, 0.05), radius: .05, fill: blue)
    // content((2, -.2), $alpha_1$)
    // content((3, -.2), $alpha_2$)
    // content((1.8, 0.95), $alpha_3$)
    // content((3.3, 0.05), $alpha_4$)
    // content((3.1, 1.25), $alpha_5$)
    // content((2.15, 1.25), $alpha_6$)
    content((2.5, -0.5), [DG])

    line((4, -.1), (5, -.1), (4, .9), (4, -.1))
    line((5.2, 0.1), (5.2, 1.1), (4.2, 1.1), (5.2, 0.1))
    line((4, -.25), (5, -.25), stroke: red)
    line((3.85, -.1), (3.85, .9), stroke: red)
    line((4.1, 1), (5.1, 0), stroke: red)
    line((4.2, 1.25), (5.2, 1.25), stroke: red)
    line((5.35, 0.1), (5.35, 1.1), stroke: red)
    circle((4, -.1), radius: .05, fill: blue)
    circle((5, -.1), radius: .05, fill: blue)
    circle((4, .9), radius: .05, fill: blue)
    circle((5.2, 1.1), radius: .05, fill: blue)
    circle((5.2, .1), radius: .05, fill: blue)
    circle((4.2, 1.1), radius: .05, fill: blue)
    circle((4, -.25), radius: .05, fill: red)
    circle((5, -.25), radius: .05, fill: red)
    circle((3.85, -.1), radius: .05, fill: red)
    circle((3.85, .9), radius: .05, fill: red)
    circle((4.1, 1), radius: .05, fill: red)
    circle((5.1, 0), radius: .05, fill: red)
    circle((4.2, 1.25), radius: .05, fill: red)
    circle((5.2, 1.25), radius: .05, fill: red)
    circle((5.35, 0.1), radius: .05, fill: red)
    circle((5.35, 1.1), radius: .05, fill: red)
    content((4.5, -0.5), [HDG])
  }),
  caption: [Comparison of degrees of freedom in a mesh with the FEM method, DG and HDG using the Lagrange basis function of order 1 for interpolation. In this case, given the low order, HDG introduces too many additional degrees of freedom to be advantageous.],
) <fem-dg-hdg>


In the context of acoustic wave propagation, to solve @acoustic-wave-equation, we have to use the first order formulation, where we denote with $bold(x)$ the space of coordinates (for example in 3D $bold(x) = {x, y, z}$), the scalar pressure field $p: Omega -> CC$ and the vectorial velocity $bold(v) : Omega -> CC^"dim"$. As described by #cite(<x-AdjointHDG>, form: "prose"), we consider the propagation in a two dimensional acoustic medium where $Omega in RR^2$ with boundary $Gamma$:

$
  cases(
    - sigma rho(bold(x)) bold(v)(bold(x)) + gradient p(bold(x)) & = 0 & "in" &Omega,
    - sigma p (bold(x)) kappa(bold(x))^(-1) + gradient dot bold(v)(bold(x)) &= f(bold(x)) &"in" &Omega,
    - (rho(bold(x)) sqrt(kappa(bold(x)) rho(bold(x))^(-1)))^(-1) p(bold(x)) + bold(v)_bold(nu)(bold(x)) &= 0 &"on" &Gamma,
  ).
$ <first-order-system>

Here, we work in the complex frequency domain, where $sigma = "i" omega - frak(s)$ and $frak(s)$ is usually set to $0$, but it can also help incorporate attenuation or viscous behavior. $nu$ is the normal direction.

After assuming that the source function $f in L^2(Omega)$, we can rewrite the system in its variational formulation, meaning we will integrate the first with a test function $phi(bold(x)) in L^2(Omega)$ and the second with $bold(psi(bold(x))) in (L^2(Omega))^2$, where the symbol #sym.macron denotes the conjugation. This gives

$
  cases(
    integral_K_e (- sigma rho bold(v) dot accent(bold(psi), macron) + gradient p dot accent(bold(psi), macron)) d K_e &= 0 ,
    integral_K_e (- sigma kappa^(-1) p accent(phi, macron) + (gradient dot bold(v)) accent(phi, macron)) d K_e &= integral_K_e f accent(phi, macron) d K_e .
  )
$

Using a piecewise polynomial to represent the solutions and the velocity

$
  p(bold(x))^((e)) = sum^(N_"dof"^((e)))_(k = 1) "p"_k^((e)) phi_k (bold(x)), space space space bold(v)^((e))_circle.filled.small = sum^(N_"dof"^((e)))_(k = 1) "v"^((e))_circle.filled.small phi_k (bold(x)).
$

Where the notation #sub(sym.circle.filled) indicates that the representation is the same for all dimensions and $phi$ corresponds to the Lagrange basis function, commonly used to interpolate points in a given data set which ensures the lowest degree polynomial. The number of degrees of freedom ($N_"dof"$) on the triangle we choose to represent a single cell in the mesh depends on the order that we choose for the polynomial. The @HDG method introduces an additional unknown for the numerical trace, referred to as $Lambda$. Following #cite(<x-AdjointHDG>, form: "prose", supplement: [~p.8-9]), the @HDG system is defined on each cell as

$
  cases(
    AA_e U_e + CC_e cal(R)_e Lambda & = SS_e,
    sum_e cal(R)_e^TT (BB_e U_e + LL_e cal(R)_e Lambda) & = 0,
  ).
$

Where $Lambda$ and $cal(R)_e$ are derived using the continuity condition of the @HDG discretization and represent the boundary condition that we see as last equation in @first-order-system. $U_e$ and $Lambda$ are our unknowns, while the other objects are computed from integrals inherited from the variational formulation. For the 2D acoustic case, the matrices $AA_e$, $CC_e$ and $U_e$ in particular have the following structure:

$
  AA_e & = mat(
    - angle.l sigma kappa^(-1) phi_i | phi_j angle.r kappa_e + tau angle.l phi_i | phi_j angle.r partial kappa_e, angle.l partial_x phi_i | phi_j angle.r kappa_e, angle.l partial_y phi_i | phi_j angle.r kappa_e;
    - angle.l phi_i | partial_x phi_j angle.r kappa_e, - angle.l sigma rho phi_i | phi_j angle.r, 0;
    - angle.l phi_i | partial_y phi_j angle.r kappa_e, 0, - angle.l sigma rho phi_i | phi_j angle.r kappa_e
  ) \
  CC_e & = mat(
    - tau angle.l xi_k | phi_j angle.r_cal(f)_1, - tau angle.l xi_k | phi_j angle.r_cal(f)_2, - tau angle.l xi_k | phi_j angle.r_cal(f)_3;
    angle.l xi_k | phi_j nu_x angle.r_cal(f)_1, angle.l xi_k | phi_j nu_x angle.r_cal(f)_2, angle.l xi_k | phi_j nu_x angle.r_cal(f)_3;
    angle.l xi_k | phi_j nu_y angle.r_cal(f)_1, angle.l xi_k | phi_j nu_y angle.r_cal(f)_2, angle.l xi_k | phi_j nu_y angle.r_cal(f)_3
  ) \
  U_e & = mat("p"_1^((e)), "p"_2^((e)), ..., "p"_(N_"dof")^((e))^((e)), "v"_(x, 1)^((e)), ..., "v"_(y, N_"dof"^((e)))^((e)))^TT.
$ <matrices-hdg>

Here the symbol $angle.l dot | dot angle.r$ denotes the inner product $angle.l phi_1 | phi_2 angle.r_K_e = integral_K_e phi_1 macron(phi_2) d K_e$. The performance analysis will focus on the first two matrices $AA_e$ and $CC_e$ in particular with the others being relatively inexpensive to compute. Rewriting the unknowns $U_e$ as $AA_e^(-1)(-CC_e cal(R)_e Lambda + SS_e)$ means that we can rewrite the system as

$
  sum_e cal(R)_e^TT (BB_e AA_e^(-1) (SS_e - CC_e cal(R)_e Lambda) + LL_e cal(R)_e Lambda) &= 0 \
  underbrace(sum_e cal(R)_e^TT (LL_e - BB_e AA_e^(-1) CC_e) cal(R)_e, cal(A)) Lambda &= underbrace(-sum_e cal(R)_e^TT BB_e AA_e^(-1) SS_e, cal(B)) \
  cal(A) Lambda &= cal(B).
$

Which is the sparse system that is fed to the sparse solver, a topic that we discussed in @sparse-solvers. A summary of the algorithm can be seen in @forward-problem. The final system results in a very sparse matrix, solving this system efficiently is one of the most challenging aspects of @HDG. As an example, #cite(<x-GPUHDG>, form: "prose") take advantage of the sparsity structure inherent in their problem to write an optimized _ad-hoc_ kernel to solve the system iteratively.

#algorithm-figure(
  "Forward Acoustic Problem",
  vstroke: .5pt + luma(200),
  inset: .5em,
  {
    import algorithmic: *
    Procedure(
      "ForwardAcousticProblem",
      ($sigma$, $rho$, $bold(v)$, $f$),
      {
        For($K_e in cal(T)$, {
          Assign([$AA_e^(-1), LL_e, BB_e, CC_e$], CallInline[BuildTensors][$K_e$, $sigma$, $rho$, $bold(v)$, $f$])
        })
        LineBreak
        LineComment(
          Assign(
            [$cal(A)$],
            [$sum_e cal(R)_e^TT (LL_e - BB_e AA_e^(-1) CC_e) RR_e$],
          ),
          [Compute the global matrix],
        )
        LineComment(
          Assign[$cal(B)$][$-sum_e cal(R)_e^TT BB_e AA_e^(-1) SS_e$],
          [Compute the forward right hand side],
        )
        LineComment(
          Assign([$Lambda$], CallInline[Solve][$cal(A) Lambda = cal(B)$]),
          [Use a sparse solver for the global system],
        )
        LineComment(
          Assign([$U_e$], [$AA_e^(-1) (-CC_e cal(R) Lambda + SS_e)$]),
          [Solve the local systems],
        )
      },
    )
  },
) <forward-problem>

We won't discuss the @HDG method in any more detail as that would be out of scope for this work. Further reading and references can be found in the bibliography. As a final remark, the key to an efficient @HDG implementation is a performant construction of the various matrices necessary to build the final system.
