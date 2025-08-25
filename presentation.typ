#import "@preview/touying:0.6.1": *
#import themes.dewdrop: *
#import "resources/graphs/fem_dg_hdg.typ": fem-dg-hdg-graph
#import "@preview/codly:1.3.0": *
#import "@preview/codly-languages:0.1.8": *
#import "@preview/numbly:0.1.0": numbly
#import "@preview/lilaq:0.4.0" as lq
#import "@preview/zero:0.4.0": set-round, zi
#import "resources/tables/clusters.typ": clusters
#import "resources/graphs/mpi_v_openmp.typ": distributed-memory, shared-memory
#import "resources/graphs/cudss_v_mumps.typ": cudss-v-mumps
#import "resources/graphs/anotinv_loop_order.typ": anotinv_diagrams
#import "@preview/fletcher:0.5.8" as fletcher: diagram, edge, node
#import "@preview/pinit:0.2.2": *
#import "resources/tables/speedup_cudss.typ": speedup-cudss-table
#import "resources/tables/cache_branch_misses.typ": (
  cache-branch-misses-table-figure,
)
#import "@preview/fletcher:0.5.8"
#import "resources/graphs/cpu_v_gpu_arch.typ": cpu-v-gpu-arch
#import "resources/graphs/hawen_schema.typ": hawen-schema
#import "resources/algorithms/forward_acoustic_problem.typ": (
  forward-acoustic-problem-alg,
)
#import "resources/utils.typ": mHz
#import "@preview/algorithmic:1.0.3": style-algorithm

#let primary = rgb("#0c4842")

#set outline.entry(fill: repeat(gap: .6em)[#sym.dot.c])
#show outline.entry.where(level: 1): set block(above: 1.3em)
#show outline.entry.where(level: 1): set text(weight: "bold")
#let in-outline = state("in-outline", false)
#show outline: it => {
  in-outline.update(true)
  it
  in-outline.update(false)
}
#show figure.where(kind: table): set figure.caption(position: top)
#show table.cell.where(y: 0): strong
#show table.cell.where(y: 0): smallcaps
#show table: it => {
  set par(justify: false)
  it
}
#set table(
  stroke: (_, y) => (
    top: if y == 0 { 2pt } else if y == 1 { none } else { 0pt } + primary,
    bottom: 1pt + primary,
  ),
  align: center + horizon,
)

#show: style-algorithm.with(hlines: (
  grid.hline(stroke: 2pt + primary),
  grid.hline(stroke: 1pt + primary),
  grid.hline(stroke: 2pt + primary),
))
#show figure.caption: emph

#let colors = lq.color.map.okabe-ito
#let highlights = colors.map(x => x.transparentize(80%))

// #let pinit-highlight-equation-from(height: 2em, pos: bottom, fill: rgb(0, 180, 255), highlight-pins, point-pin, body) = {
//   pinit-highlight(..highlight-pins, dy: -0.9em, fill: rgb(..fill.components().slice(0, -1), 40))
//   pinit-point-from(
//     fill: fill, pin-dx: 0em, pin-dy: if pos == bottom { 0.5em } else { -0.9em }, body-dx: 0pt, body-dy: if pos == bottom { -1.7em } else { -1.6em }, offset-dx: 0em, offset-dy: if pos == bottom { 0.8em + height } else { -0.6em - height },
//     point-pin,
//     rect(
//       inset: 0.5em,
//       stroke: (bottom: 0.12em + fill),
//       {
//         set text(fill: fill)
//         body
//       }
//     )
//   )
// }

#let fletcher-diagram = touying-reducer.with(
  reduce: fletcher.diagram,
  cover: fletcher.hide,
)

// #set-round(mode: "uncertainty")
#show: codly-init.with()
// #show: dewdrop-theme
#show: dewdrop-theme.with(
  aspect-ratio: "16-9",
  footer: self => self.info.institution,
  navigation: "mini-slides",
  alpha: 30%,
  config-common(
    show-bibliography-as-footnote: {
      set text(.5em)
      bibliography(title: none, "works.yaml")
    },
    preamble: {
      codly(
        breakable: true,
        languages: codly-languages,
        aliases: ("cuda": "c++"),
        zebra-fill: none,
        number-align: right + horizon,
        number-format: it => text(fill: luma(200), str(it)),
      )
    },
  ),
  config-info(
    title: [Performance Analysis and CUDA Acceleration \ of the Open Source Software "HAWEN"],
    subtitle: [Master thesis project at INRIA],
    author: [Eduard Antonovic Occhipinti],
    date: datetime.today(),
    institution: [Université Grenoble Alpes],
  ),
)

// #set heading(numbering: numbly("{1}.", default: "1.1"))

#show footnote.entry: set text(size: .8em)

#title-slide()

#outline-slide()


// Good evening, I'm Eduard Occhipinti and in this presentation I will talk about the subject of my master internship and thesis, which is a perfomance study on an open source software for wave simulations called "HAWEN" with a particular focus on CUDA acceleration and in general GPU computing. Let's start by giving a bit of context.


= Introduction
// When studying the earth, trying to predict earthquakes and vulcanic eruptions or locating mineral or oil deposits or using ultrasound imaging for medical purposes a common problem arises and that is the study of waves and wave propagation. Solving this problem requires the solution of wave equations, such as the one shown here. This problem implies the solution of a large scale linear system.

#slide[
  - Researching ways to predict earthquakes or vulcanic eruptions #pause

  - Predicting the location of mineral deposits #pause

  - Ultrasound imaging for medical purposes #pause

  #align(center + horizon)[$
      - nabla dot 1/(rho(bold(x))) nabla p(bold(x)) - omega^2 / (kappa(bold(x))) p(bold(x)) = g(bold(x))
    $]

  #speaker-note[
    - LARGE SCALE LINEAR SYSTEMS
    - EMBARASSINGLY PARALLEL ALGORITHM USED TO SOLVE IT IN HAWEN, SCALABLE, GREAT FOR GPU
  ]
]

#heading(
  level: 1,
  depth: 1,
  context if in-outline.get() [Wave Simulations] else [Numerical Simulations of Wave Propagation],
)

== HAWEN

// In this context, the HAWEN software was developed. HAWEN is a tool used to solve wave equations in the frequency domain and compute the solution of both the forward problem, meaning the simulation of the propagation of waves through a medium, and the inverse problem, meaning the reconstruction of the properties of a non-directly accessible medium.

#slide[
  #figure(
    image(height: 74%, "resources/imgs/global-earth_simu.png"),
    caption: [30 million unknowns, 2.7TB of memory for matrix factorization. Computed in 18 minutes on 1260 cores (90 MPI processes with 14 threads each)],
  )
]

#slide[
  Open source software developed by Florian Faucher @HAWEN @FloPhD.

  - Used to solve both the _forward_ and _inverse_ problem #pause

  - Designed for large scale problems using the Hybridizable Discontinuous Method (HDG) #pause

  - Parallelized using a combination of MPI and OpenMP #pause

  - Written in Fortran

  #speaker-note[
    / FORWARD PROBLEM: simulation of the propagation of waves through a medium

    / INVERSE PROBLEM: reconstruct the physical properties of a non-directly accessible medium
  ]
]

#slide[
  #align(center + horizon, hawen-schema(presentation: true))
]

#heading(
  level: 2,
  depth: 2,
  context if in-outline.get() [HDG for Acoustic] else [HDG Methods Applied to the Acoustic Wave Problem],
)


#let pinit-point-from = pinit-point-from.with(thickness: 1pt)
#let pinit-arrow = pinit-arrow.with(thickness: 1pt)

#slide[
  #align(center + horizon)[$
      - nabla dot 1/(#pin(1)rho(bold(x))#pin(2)) nabla #pin(9)p(bold(x))#pin(10) - (#pin(5)omega^2#pin(6)) / (#pin(3)kappa(bold(x))#pin(4)) #pin(11)p(bold(x))#pin(12) = #pin(7)g(bold(x))#pin(8)
    $

    #pinit-highlight(1, 2, fill: highlights.at(0))
    #pinit-point-from(
      1,
      offset-dy: 35pt,
      offset-dx: -50pt,
      body-dx: -60pt,
      fill: colors.at(0),
    )[density]

    #pause

    #pinit-highlight(3, 4, fill: highlights.at(1))
    #pinit-point-from(3, offset-dx: 50pt, fill: colors.at(1))[bulk modulus]

    #pause

    #pinit-highlight(5, 6, fill: highlights.at(2))
    #pinit-point-from(
      5,
      pin-dy: -15pt,
      body-dy: -15pt,
      offset-dy: -70pt,
      fill: colors.at(2),
    )[angular frequency]

    #pause

    #pinit-highlight(7, 8, fill: highlights.at(3))
    #pinit-point-from(
      8,
      offset-dx: 80pt,
      offset-dy: 0pt,
      pin-dy: 0pt,
      body-dy: -10pt,
      fill: colors.at(3),
    )[source]

    #pause

    #pinit-highlight(9, 10, fill: highlights.at(4))
    #pinit-highlight(11, 12, fill: highlights.at(4))
    #pinit-point-from(
      9,
      pin-dy: 20pt,
      offset-dy: 100pt,
      body-dy: -10pt,
      fill: colors.at(4),
    )[#pin(13)scalar pressure field]
    #pinit-arrow(13, 11, start-dx: 30pt, end-dy: 20pt, fill: colors.at(4))
  ]
]

// #slide[
//   To solve numerically the wave equation we need to discretize the equation and solve the Partial Differential Equation (PDE).

//   / Finite Difference Methods (FDMs): approximate differential equations through finite differences, for example $f'(x)$ can be approximated as $ f'(x) approx (f(x + Delta x) - f(x - Delta x)) / (2 Delta x). $

//   / Galerkin Methods: approximate the solution itself by expressing it as a combination of basis functions and ensuring that the equation holds on average across the whole domain.
// ]

#slide[
  #align(center + horizon)[
    #figure(
      fem-dg-hdg-graph(len: 4.5cm, stroke-width: 2pt, presentation: true),
    )
  ]
]

// #slide[
//   === First-order Formulation

//   For HDG we need the first-order formulation @AdjointHDG, considering a domain $Omega in RR^2$ with boundary $Gamma$, we have scalar pressure field as $p : Omega -> CC$ and vectorial velocity as $bold(v) : Omega -> CC^"dim"$

//   $
//     cases(
//       - i omega rho(bold(x)) bold(v)(bold(x)) + gradient p(bold(x)) & = 0 & "in" &Omega,
//       - i omega p (bold(x)) kappa(bold(x))^(-1) + gradient dot bold(v)(bold(x)) &= g(bold(x)) &"in" &Omega,
//       - (rho(bold(x)) sqrt(kappa(bold(x)) rho(bold(x))^(-1)))^(-1) p(bold(x)) + bold(v)(bold(x)) dot bold(nu) &= 0 &"on" &Gamma,
//     ).
//   $ <first-order-system>
// ]

#slide(repeat: 2, self => [
  #set text(size: .8em)

  #alternatives[#forward-acoustic-problem-alg(
      highlight-tensors: false,
    )][#forward-acoustic-problem-alg(highlight-tensors: true)]
])

= Tools for Parallelism

== CUDA

#slide[
  #set text(size: .6em)
  #figure(
    cpu-v-gpu-arch(scale-axis: 170%),
  )
]

== MPI

#slide[
  #set align(horizon)
  #grid(columns: 2, column-gutter: 3em)[
    #set text(size: 1.3em)
    #figure(distributed-memory(presentation: true))][
    - *Message Passing Interface* #pause
    - Spawns *processes* #pause
    - Aimed (but not restricted) to the use in *distributed memory* systems #pause
    - It's a specification, it can be used as a *library*
  ]
]

== OpenMP

#slide[
  #set align(horizon)
  #grid(columns: 2, column-gutter: 3em)[
    #set text(size: 1.3em)
    #figure(shared-memory(presentation: true))][
    - Spawns *OS threads* #pause
    - Restricted to *shared-memory* environments #pause
    - Requires support at the compiler level, used with *compiler directives* #pause
    - Currently supports both *CPU* and *GPU* targets
  ]
]

== OpenACC

#slide[
  - Similar to OpenMP, but more target for *heterogenous* systems #pause
  - Default for GPU offloading in *NVHPC* due to better performance/implementation #pause

  #figure(
    kind: raw,
    {
      set text(size: .68em)
      grid(
        columns: 1,
        column-gutter: 1em,
        row-gutter: 1em,
        align: center + horizon,
        ```f90
        !$omp parallel do collapse(2) default(shared)
        !$acc parallel loop collapse(2) default(present)
        do i=1, n
          do j=1, m
            a(i, j) = w * b(i, j)
          end do
        end do
        !$acc end parallel loop
        !$omp end parallel do
        ```,

        ```f
        do concurrent (i=1:n, j=1:m)
          a(i, j) = w * b(i, j)
        end do
        ```,
      )
    },
  )
]

== Clusters

We used both the *DOREMI CALI v3* @CALI and *PlaFRIM* @PlaFRIM clusters, *SLURM* as scheduler

#[
  #set text(size: .78em)
  #figure(
    clusters(presentation: true),
  )

  #speaker-note[
    - tradeoff between core count and core complexity
    -
  ]
]

= Contributions

== Preliminary Work

#slide[
  #grid(
    columns: 2,
    column-gutter: 4em,
    [
      === CMake
      - Modernizing HAWEN's build system #pause
      - Simplified to a single library #pause
      - Fixes for *parallel compilation* #pause
      - Integration with *Ninja* and *Ccache* #pause
      - *Declarative dependency management* // with fetch content
    ],
    move(dy: 40pt, scale(150%, figure(
      supplement: none,
      numbering: none,
      image(height: 45%, "resources/imgs/icons/cmake.png"),
      caption: [#set text(size: .5em, fill: gray)
        Image courtesy of https://earthly.dev/blog/cmake-vs-make-diff/],
    ))),
  )

  === Others

  - Integrated a *Unit Testing* framework #pause
  - Fixes for non-standard precision kinds #pause // to ensure compatibility acrosso compilers
  - Eliminating string operations (`trim`, `adjustl`, `select("...")`, ...) in potential GPU code

  // I'll use an image from the internet instead, this looks like shit
  // #fletcher.diagram({
  //   let color = lq.color.map.okabe-ito.at(2)

  //   fletcher.node((0, 1.4), [#image(
  //       height: 1.2cm,
  //       "resources/imgs/icons/c.svg",
  //     )])
  //   fletcher.node((.5, 1), [#image(
  //       height: 1.2cm,
  //       "resources/imgs/icons/cplusplus.svg",
  //     )])
  //   fletcher.node((1, 1.4), [#image(
  //       height: 1.2cm,
  //       "resources/imgs/icons/cuda.svg",
  //     )])
  //   fletcher.node((.5, 1.5), [#image(
  //       height: 2cm,
  //       "resources/imgs/icons/fortran.svg",
  //     )])

  //   edge("->", stroke: 2pt + color)

  //   fletcher.node((.5, 2.8), [#grid(columns: 1, row-gutter: .5em, image(
  //       height: 2cm,
  //       "resources/imgs/icons/cmake.svg",
  //     ), [*CMake*])])

  //   edge((.5, 2.8), "r", (2, 1.5), "->", stroke: 2pt + color)

  //   fletcher.node((1.5, 3.4), [#grid(
  //       columns: 1,
  //       row-gutter: .5em,
  //       image(height: 1.2cm, "resources/imgs/icons/json.svg"),
  //       [*JSON preset*],
  //     )])

  //   edge((1.5, 3.4), (1.5, 2.8), stroke: 2pt + color)

  //   fletcher.node((2, 1.5), [
  //     #grid(
  //       columns: 2,
  //       column-gutter: 1.5em,
  //       row-gutter: .5em,
  //       image(
  //         height: 2cm,
  //         "resources/imgs/icons/makefile.svg",
  //       ),
  //       image(
  //         height: 2cm,
  //         "resources/imgs/icons/ninja.svg",
  //       ),

  //       [*GNU Make*], [*Ninja*],
  //     )
  //   ])

  //   edge((1, 1.4), (2, 1.5), "->", stroke: 2pt + color)
  // })
]

#heading(
  level: 2,
  depth: 2,
  context if in-outline.get() [Matrix Inversions & Cache Locality] else [Removing Matrix Inversions and Optimizing Cache Locality],
)

#slide[
  === Improving Cache Locality

  - Concepts from *Data-Oriented Design* @DOD #pause
  - *Reordering loops* and changing the order of the dimensions of the tensors #pause // Fortran is column major

  // These two lines of code alone represent 90% of the program runtime for a 2D elastic benchmark
  #figure({
    set text(.68em)
    ```f90
    do concurrent(l=1:ctx_dg%n_different_order, k=1:ctx_dg%n_different_order)
      n_dof_k = ctx_dg%n_dof_per_order(k)
      n_dof_l = ctx_dg%n_dof_per_order(l)
      face_phi_xi(k,l)%array = sum(ctx_dg%quadGL_face_phi_phi_w(k,l)%array, dim=4)
      do concurrent(j=1:n_dof_l, i=1:n_dof_k, iface=1:3, jdim=1:2, kdim=1:2)
        face_phi_xi_nCntau(k,l)%array(kdim,jdim,iface,i,j) = dot_product(face_coeff_Cx(kdim,jdim,iface,:), ctx_dg%quadGL_face_phi_phi_w(k,l)%array(iface,i,j,:))
      end do
    end do
    ```
  })
]

#slide(repeat: 2, self => [
  === Replacing Inversions of Dense Matrices

  #alternatives[#grid(columns: 2, align: horizon, column-gutter: -.5em)[#figure(
        image(width: 90%, "resources/imgs/paraview_summary.svg"),
      )][
      - Profiled using the TAU Performance System@TAU
      - Visualization with ParaProf
    ]][
    #figure(
      image(width: 100%, "resources/imgs/paraview_summary_cropped.png"),
    )
    For the bottom 5 bars we have, in order:
    - `hdg_build_quadrature_int_2D`
    - `hdg_build_quadrature_int_2D`
    - Overhead of TAU instrumentation
    - LAPACK's `*GETRI` (matrix inverse)
    - `hdg_build_Ainv_2D`
  ]
])

#slide[
  When solving a system $A X = B$, $L U$ decomposition is #pause
  - *always faster* #only("2")[@DontInvertThatMatrix @WhyNotInvertMatrix @WhyLUbetterThanInverse] #pause
  - *more accurate* for ill-conditioned matrices #only("3")[@AccuracyAndStability[Section 14.1]] #pause

  $
    A = mat(a_11, a_12, a_13; a_21, a_22, a_23; a_31, a_32, a_33) = L U = mat(1, 0, 0; l_21, 1, 0; l_31, l_32, 1) mat(u_11, u_12, u_13; 0, u_22, u_23; 0, 0, u_33)
  $

  #pause

  We rewrite the previous equation to avoid computing the inverse
  - LAPACK's `*GETRF` and `*GETRS`
]

#slide[
  === Computing Analytically Other Inversions

  - *elastic wave propagation*: compliance tensor in Voigt notation #only("1")[@Voigt] is #only("1")[@HDGStabilize] $S = V^(-1) C^(-1) V^(-1)$ #pause

  #let zeros = $0$

  #only(2)[
    $
      V_"3D" = mat(
        1, zeros, zeros, zeros, zeros, zeros;
        zeros, 1, zeros, zeros, zeros, zeros;
        zeros, zeros, 1, zeros, zeros, zeros;
        zeros, zeros, zeros, 2, zeros, zeros;
        zeros, zeros, zeros, zeros, 2, zeros;
        zeros, zeros, zeros, zeros, zeros, 2
      ), C_"3D" & = mat(
                    lambda + 2 mu, lambda, lambda, zeros, zeros, zeros;
                    lambda, lambda + 2 mu, lambda, zeros, zeros, zeros;
                    lambda, lambda, lambda + 2 mu, zeros, zeros, zeros;
                    zeros, zeros, zeros, mu, zeros, zeros;
                    zeros, zeros, zeros, zeros, mu, zeros;
                    zeros, zeros, zeros, zeros, zeros, mu
                  )
    $] #pause

  #only(3)[
    $
      S = mat(
        (lambda + mu)/(mu(2 mu + 3 lambda)), -lambda/(2 mu (2 mu + 3 lambda)), -lambda/(2 mu (2 mu + 3 lambda)), zeros, zeros, zeros;
        -lambda/(2 mu (2 mu + 3 lambda)), (lambda + mu)/(mu(2 mu + 3 lambda)), -lambda/(2 mu (2 mu + 3 lambda)), zeros, zeros, zeros;
        -lambda/(2 mu (2 mu + 3 lambda)), -lambda/(2 mu (2 mu + 3 lambda)), (lambda + mu)/(mu(2 mu + 3 lambda)), zeros, zeros, zeros;
        zeros, zeros, zeros, 1 / (4 mu), zeros, zeros;
        zeros, zeros, zeros, zeros, 1 / (4 mu), zeros;
        zeros, zeros, zeros, zeros, zeros, 1 / (4 mu)
      )
    $
  ]
]


#slide[
  === Evaluation

  Benchmarked with
  - Marmousi2 2D model @Marmousi2 #pause
  - 100 thousand cells #pause
  - 169 sources (right-hand sides $cal(B)$ of global liner system) #pause
  - frequency of #zi.Hz[7] #pause
  - 8 different configuration, polynomial in $[2, 9]$ + $frak(p)$-adaptability
]

#slide[
  #figure(
    image("resources/imgs/model_plot.svg"),
  )
]
// #slide[
//   #figure(
//     image("resources/imgs/magnitude_plot.svg"),
//     caption: [Magnitude of displacement field],
//   )
// ]
#slide[
  #figure(
    image("resources/imgs/real_part_plot.svg"),
  )
]

#slide[
  #anotinv_diagrams(width: 24cm, height: 10.2cm)
]

#slide[
  #anotinv_diagrams(width: 24cm, height: 10.2cm)
  #place(
    top + left,
    dx: -5pt,
    dy: -5pt,
    rect(width: 75%, height: 103%, fill: white.transparentize(30%)),
  )
  #place(
    top + right,
    dx: -5pt,
    dy: -5pt,
    rect(width: 15%, height: 103%, fill: white.transparentize(30%)),
  )
  #place(
    top,
    dy: -10pt,
    dx: 567pt,
    rect(width: 10%, height: 10%, fill: white.transparentize(30%)),
  )
]

#let horizontal-anotinv-loop(config) = {
  let data = json("resources/benches/2d_elastic_marmousi.json").mesh100k
  let branches = data.keys()

  show: lq.set-label(pad: 1em)
  show lq.selector(lq.label): set align(top + right)
  lq.diagram(
    width: 25.5cm,
    xlabel: [Time in seconds],
    height: 9cm,
    yaxis: (ticks: ((0.5, [#config]),), subticks: 0),
    ..for (branch_idx, branch_name) in branches.enumerate() {
      (
        lq.hboxplot(
          y: 0.5,
          label: branch_name,
          stroke: 1pt + lq.color.map.okabe-ito.at(branch_idx),
          fill: lq.color.map.okabe-ito.at(branch_idx).transparentize(90%),
          median: 3pt + lq.color.map.okabe-ito.at(branch_idx),
          outlier-stroke: 1pt + lq.color.map.okabe-ito.at(branch_idx),
          data
            .at(branch_name)
            .at(config)
            .successful_runs
            .map(run => {
              run.matrix_creation_time_seconds
            }),
        ),
      )
    },
  )
}

#slide[
  #horizontal-anotinv-loop("p9")
]

#slide[
  #anotinv_diagrams(width: 24cm, height: 10.2cm)
  #place(
    top + left,
    dx: -5pt,
    dy: -5pt,
    rect(width: 85%, height: 103%, fill: white.transparentize(30%)),
  )
  #place(
    top + right,
    dx: -5pt,
    dy: -5pt,
    rect(width: 5%, height: 103%, fill: white.transparentize(30%)),
  )
  #place(
    top,
    dy: -10pt,
    dx: 640pt,
    rect(width: 10%, height: 10%, fill: white.transparentize(30%)),
  )]

#slide[
  #horizontal-anotinv-loop("p2-9")
]

#slide[
  #set table(inset: .6em)

  Looking at the generated assembly code
  - $approx 30%$ reduction in instruction count with `MOV` and `ADD` type instructions decreasing in equal measure: *less data movement* #pause
  - dot product for face integrals accounting for $approx$ *80%* of the *total program runtime* #pause
  - no improvements with BLAS or GEMM operations: a higher level of parallelism is necessary #pause
  #figure(cache-branch-misses-table-figure())
]

#heading(
  level: 2,
  depth: 2,
  context if in-outline.get() [NVHPC] else [Compiling HAWEN with the NVHPC Toolkit],
)

#slide[
  Explore using the *NVHPC Toolkit* which provides #pause
  - Fortran, C, and C++ compilers #pause
  - General CUDA and math libraries #pause
  - CUDA-aware OpenMPI @OpenMPI #pause
]

#heading(
  level: 2,
  depth: 2,
  context if in-outline.get() [cuDSS] else [Using a GPU Accelerated Sparse Solver],
)

#slide[
  #grid(
    columns: 2,
    column-gutter: 1em,
    [
      - $cal(A) Lambda = cal(B)$ is very sparse, cannot rely on LAPACK #pause
      - HAWEN uses a *direct* solver: *MUMPS* @MUMPS
        - Currently cannot compile with NVFortran
        - GPU version not yet public
        - Relies on XKBlas @XKBlas, not configured for the NVHPC Toolkit #pause
      - we explore a very recent GPU accelerated sparse solver by NVIDIA: *cuDSS*
    ],
    figure(image(height: 62%, "resources/imgs/A_spy_plot.svg")),
  )
]

#slide[
  === Implementation

  - Interface between Fortran and C++ through C bindings #pause
  - Communication layers built in-tree to support *multi-threading* and *MGMN* mode #pause
  - conversion between *COO* and *CSR* formats efficiently using algorithms from SciPy @SciPy #pause
  - Sparse to dense conversion for RHS using *cuSPARSE* #pause

  === Limitations of our Implementation

  - Currently faulty at high polynomial orders
]

#slide[
  === Evaluation

  Benchmarked with
  - Homogeneous planar waves in a $2 times 2 times 2$ meters cube (sources in one of the corners)  #pause
  - 100 thousand cells #pause
  - 4 sources (right-hand sides $cal(B)$ of the global linear system) #pause
  - frequency of #mHz[2] #pause
  - polynomial order 3 #pause
  - compared cuDSS `0.6.0` against MUMPS `5.8.0` on the Suroit cluster
  - 1 combination of MPI/OpenMP for cuDSS, several for MUMPS
]

#slide[
  #align(center + horizon)[
    #figure(image(height: 88%, "resources/imgs/3D_homogeneous_benchmark.svg"))
  ]
]

#slide[
  #cudss-v-mumps(width: 26cm, height: 9cm, highlighted: false)
]

#slide[
  #cudss-v-mumps(width: 26cm, height: 9cm, highlighted: true)
]
#slide[
  #set align(horizon)
  #figure(
    speedup-cudss-table(presentation: true)
  )
]

= Conclusions

#focus-slide[
  Thank you for your attention
]
