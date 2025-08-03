#import "@preview/fletcher:0.5.8" as fletcher: diagram, edge, node
#import "@preview/cetz:0.4.0"

#let flo(term, color: red) = {
  text(color, box[Flo: #term])
}

= Numerical Simulations of Wave Propagation

This is a generic title. Replace it with an actual title that describes the context of the work.

Give a clear statement of the research problem, and the current scientific state of the art on this problem. Use the state of the art to analyze the problem. Use the analysis to develop a proposal for a possible solution to the problem (or multiple possible solutions).

// talk about how at first Hawen was only parallelized on CPU, big picture of the software and some perfomance

// Maybe here I can talk about tools and technologies?
== HAWEN <hawen-chapter>

// The @HAWEN software is a Fortran-based library designed to simulate the propagation of waves in a given medium (what we will call from now on the _forward problem_) and reconstruct the physical properties of a non-directly accessible medium (the _inverse problem_) @x-HAWEN. It is a general purpose tool which can be used in fields such as medical imaging, geophysics, helio-seismology, and more. The software achieves so by solving the wave equation in the frequency domain.
The @HAWEN software is a Fortran-based library designed to simulate the propagation of waves in a given medium (what we will call from now on the _forward problem_) and reconstruct the physical properties of a non-directly accessible medium (the _inverse problem_) @x-HAWEN @x-FloPhD.

In the inverse problem, waves are measured and their properties are used to characterize the medium in which they propagated. This context arises in several fields, with applications ranging from medial imaging, geophysics, helio-seismology, and more.

#figure(
  image("../resources/imgs/global-earth_simu.png"),
  caption: [Propagation of elastic waves in the Earth in three-dimensions, using the PREM Earth models for P- and S-wave speeds, density and quality factors. The system is comprised of 30 millions of unknowns and used 2.7TB for the matrix factorization. The total computational time was 18 minutes on 1260 cores (90 MPI processes and 14 threads for each MPI process).],
) <earth-hawen>


#figure(
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
  caption: [Schematic representation of the HAWEN pipeline. In green it's highlighted the _forward problem_ and in blue the _inverse problem_. Note that one use case of the software is solving the _forward problem_ only.],
)

@HAWEN is designed specifically with large scale problems in mind. It leverages a combination of @MPI and OpenMP to achieve a high level of parallelism on @CPU:short. An example of the problems the software is designed for can be seen in @earth-hawen, where the @PREM @x-PREM model of our planet is used to simulate the propagation of elastic waves through the Earth. It is currently deployed on supercomputers.

A specificity of @HAWEN is the usage of the @HDG method for the discretization of the wave equation (see @hdg-section for more informations).

We can identify three computationally intensive steps in the @HAWEN pipeline:

- The *discretization* step, where the global matrix is built with the @HDG method from each cell of the mesh.

- The *factorization* step: when the linear system is solved using a sparse solver, @MUMPS (see @mumps-section for more details), the most expensive operation is really the factorization of the matrix, given that the code relies on a direct solver, rather than an iterative one. Once factorized, the actual solve step is relatively fast. This choice allows solving for multiple right hand sides relatively cheaply (factorization only has to be performed once).

- The *save* step, where the results of the simulation are saved to disk.

Some specific configurations also highlight other inefficiencies in the code. For example, a known problem, is that the mapping time currently uses a brute force approach. This results in particularly long mapping times for big 3D elastic benchmarks, but is something that is already being worked on, in particular, using the Barycentric Walk algorithm @x-BaryWalk.

This work will focus mainly on the first two steps. For the first step, the goal will be to reduce the complexity of the matrix creation and offload part it to the @GPU. For the second step, it will explore a new direct sparse solver by NVIDIA, cuDSS (see @cudss-section for more details).
// talk about the structure of the code, the fact that he doesn't care about time but about the different frequencies, talk about fourier transforms. Draw a pipeline of the code with fletcher and highlight the section of the code we are focusing on.


== Hybridizable Discontinuous Galerkin Methods Applied to the Acoustic Wave Problem <hdg-section>

To describe the medium trough which we want to solve the wave equation in @HAWEN and find the unknowns $u$, for the forward problem, or $rho$ and $kappa$, for the inverse problem, we use 1D, 2D or 3D meshes. Common ways to solve @PDE:pl include @FDM:pl, a class of numerical methods for solving differential equations, equations of the form $f'(x) approx (f(x + d x) - f(x - d x)) / (d x)$, by approximating derivatives trough finite differences and Galerkin Methods, which instead approximate the space of the solution. This last approach is particularly useful with large meshes because it doesn't require homogeneous cell sizes, meaning that regions of particular interest can be prioritized.

To achieve this partitioning, @HAWEN currently employ a partitioner called METIS @x-METIS, which splits the mesh in triangles leading the solution to each triangle being defined by a smaller equation.

Once partitioned, one common way to solve the @PDE using Galerkin methods would be the @FEM:long technique. As can be seen in @fem-dg-hdg, this method results in a mesh where each triangle's solution are coupled with the neighboring triangle, limiting the potential for concurrent computations.

A first approach to tackle this problem is the usage of @DG:long methods, a class of @FEM:pl using completely discontinuous basis functions which results in embarrassingly high parallel efficiency @x-DiscontinousGalerkin. @DG also enables $p$-adaptivity, meaning that each cell in a mesh can have a different order, a characteristic that is particularly useful when dealing with large meshes. The high computational cost associated with @DG, however, makes it largely unsuitable for real world applications. To address this issue, @HDG:long (@HDG:short) are introduced.

Compared to traditional @DG methods, @HDG reduces significantly the number of globally coupled @DOF, which can allow for a substantial reduction in the computational cost and memory usage @x-HDG. We see in @fem-dg-hdg, how @HDG introduces additional #lower[@DOF:long] at the border of each cell. By ignoring the inner #lower[@DOF:long], this method results in a smaller when using high order basis functions, which result in a more accurate solution.

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
