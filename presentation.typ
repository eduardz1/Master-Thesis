#import "@preview/touying:0.6.1": *
#import themes.dewdrop: *
#import "resources/graphs/fem_dg_hdg.typ": fem-dg-hdg-graph
#import "@preview/codly:1.3.0": *
#import "@preview/codly-languages:0.1.8": *
#import "@preview/physica:0.9.5": *
#import "@preview/numbly:0.1.0": numbly
#import "@preview/lilaq:0.4.0" as lq
#import "resources/algorithms/build_volume_integrals.typ": (
  build-volume-integrals,
)
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
#import "resources/tables/synthetic_data.typ": *
#import "resources/tables/speedup_nvhpc.typ": *
#import "@preview/algorithmic:1.0.3": style-algorithm

#let primary = rgb("#0c4842")

#set outline.entry(fill: repeat(gap: .6em)[#sym.dot.c])
#show outline.entry.where(level: 1): set block(above: 1.3em)
#show outline.entry.where(level: 1): set text(weight: "bold", fill: primary)
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
  grid.hline(stroke: 0pt + primary),
  grid.hline(stroke: 2pt + primary),
))
#show figure.caption: emph

#let colors = lq.color.map.okabe-ito
#let highlights = colors.map(x => x.transparentize(80%))

#let fletcher-diagram = touying-reducer.with(
  reduce: fletcher.diagram,
  cover: fletcher.hide,
)

#set text(font: "Atkinson Hyperlegible")
#show math.equation: set text(font: "Lete Sans Math")
// #set text(hyphenate: false)

// #set strong(delta: 100)

// #set-round(mode: "uncertainty")
#show: codly-init.with()
// #show: dewdrop-theme
#show: dewdrop-theme.with(
  aspect-ratio: "16-9",
  footer: self => self.info.institution,
  navigation: "mini-slides",
  alpha: 30%,
  mini-slides: (
    height: 2em,
    x: 2em,
    display-section: false,
    display-subsection: false,
    short-heading: true,
  ),
  config-common(
    new-section-slide-fn: new-section-slide.with(depth: 1),
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
#set figure(supplement: none)

#let hide-appendinx = true

#title-slide()

// #outline-slide(depth: 1)


// Good evening, I'm Eduard Occhipinti and in this presentation I will talk about the subject of my master internship and thesis, which is a perfomance study on an open source software for wave simulations called "HAWEN" with a particular focus on CUDA acceleration and in general GPU computing. Let's start by giving a bit of context.


= Introduction

#slide[
  #if hide-appendinx {
    place(dx: 690pt, dy: -80pt, box(width: 80pt, height: 30pt, fill: white))
  }
  - Internship conducted at *MAKUTU* team
    - INRIA Centre at the University of Bordeaux #pause

  - Specialized in mathematical model and computational framework for wave modeling
    - heavily invested in *full waveform inversion* #pause

    #set text(.8em)
    #figure(
      grid(
        columns: 4,
        align: bottom,
        column-gutter: 0em,
        row-gutter: 1em,
        figure(
          image(width: 80%, "resources/imgs/helio_modeling-300x289.png"),
          caption: [Solar Imaging],
        ),
        figure(
          image(width: 80%, "resources/imgs/bateauv4-300x165.png"),
          caption: [Electromagnetism],
        ),

        figure(
          image(width: 80%, "resources/imgs/vents-300x297.jpg"),
          caption: [Musical Acoustics],
        ),
        figure(
          image(width: 80%, "resources/imgs/3layers_grad1.png"),
          caption: [Geophysical Imaging],
        ),
      ),
      caption: [#text(
          fill: gray,
        )[Images courtesy of https://team.inria.fr/makutu/]],
    )

  // Makutu builds advanced mathematical models and computational frameworks for the reconstruction of complex media that are crossed by mechanical or electromagnetic waves. The team is particularly interested in discontinuous finite element methods, spectral elements and high-order time schemes, each of which is relevant to solving wave equations. These numerical methods are eventually hybridized with machine learning techniques. Reconstruction is via inverse problem solving, and Makutu is heavily invested in full waveform inversion, which is a high-definition imaging method widely used in geophysics.

  #speaker-note[
    - LARGE SCALE LINEAR SYSTEMS
    - EMBARASSINGLY PARALLEL ALGORITHM USED TO SOLVE IT IN HAWEN, SCALABLE, GREAT FOR GPU
  ]
]

#heading(
  level: 1,
  depth: 1,
  context if in-outline.get() [Wave Simulations] else [HAWEN],
)

== Inverse Wave Problem

#slide[
  #if hide-appendinx {
    place(dx: 690pt, dy: -80pt, box(width: 80pt, height: 30pt, fill: white))
  }

  #align(center + horizon, hawen-schema(presentation: true))
]

== The Software

// In this context, the HAWEN software was developed. HAWEN is a tool used to solve wave equations in the frequency domain and compute the solution of both the forward problem, meaning the simulation of the propagation of waves through a medium, and the inverse problem, meaning the reconstruction of the properties of a non-directly accessible medium.

#slide[
  #if hide-appendinx {
    place(dx: 690pt, dy: -80pt, box(width: 80pt, height: 30pt, fill: white))
  }

  #figure(
    image(height: 64%, "resources/imgs/global-earth_simu.png"),
    caption: [
      #set text(fill: gray, size: .8em)
      30 million unknowns, 2.7TB of memory for matrix factorization. Computed in 18 minutes on 1260 cores (90 MPI processes with 14 OpenMP threads each) on the PREM@PREM model of the Earth.],
  )
]

#slide[
  #if hide-appendinx {
    place(dx: 690pt, dy: -80pt, box(width: 80pt, height: 30pt, fill: white))
  }

  Open source software developed by Florian Faucher@HAWEN@FloPhD.

  - Used to solve both the _forward_ and _inverse_ problem in the frequency domain #pause

  - Uses the Hybridizable Discontinuous Galerkin (HDG) method #pause

  - Designed for large scale problems, parallelized with MPI + OpenMP #pause

  - Written in modern Fortran

  #speaker-note[
    / FORWARD PROBLEM: simulation of the propagation of waves through a medium

    / INVERSE PROBLEM: reconstruct the physical properties of a non-directly accessible medium
  ]
]

== The HDG Method

#slide[
  #if hide-appendinx {
    place(dx: 690pt, dy: -80pt, box(width: 80pt, height: 30pt, fill: white))
  }

  #align(center + horizon)[
    #figure(
      fem-dg-hdg-graph(len: 4.5cm, stroke-width: 2pt, presentation: true),
    )
  ]

  #speaker-note[
    / Galerkin methods: used to solve Partial Differential Equations, differ from Finite Difference Methods approximate the solution itself by expressing it as a combination of basis functions

    - HDG introduces ADDITIONAL DOFs at the faces. These allow to rewrite the system only in respect to these DOFs
  ]
]

#slide(repeat: 2, self => [
  #if hide-appendinx {
    place(dx: 690pt, dy: -80pt, box(width: 80pt, height: 30pt, fill: white))
  }

  $
    cases(
      AA_e U_e + CC_e cal(R)_e Lambda & = SS_e,
      sum_e cal(R)_e^TT (BB_e U_e + LL_e cal(R)_e Lambda) & = 0,
    )
  $
  #set text(size: .8em)
  #alternatives[#forward-acoustic-problem-alg(
      presentation: true,
      highlight-tensors: false,
    )][#forward-acoustic-problem-alg(
      highlight-tensors: true,
      presentation: true,
    )]
])

= Tools for Parallelism

== MPI & OpenMP

#slide(repeat: 2, self => [
  #if hide-appendinx {
    place(dx: 690pt, dy: -80pt, box(width: 80pt, height: 30pt, fill: white))
  }

  #set align(horizon)
  #{
    set align(bottom)
    set text(1em)
    grid(columns: 2, column-gutter: 5em, inset: 1em)[
      #figure(
        distributed-memory(presentation: true),
        caption: [Distributed memory paradigm],
      )][#uncover("2")[#figure(
          shared-memory(presentation: true),
          caption: [Shared-memory paradigm],
        )]]
  }

  #grid(columns: 2, column-gutter: 6.3em, inset: (bottom: 2em))[
    - *MPI* (#underline[Message Passing Interface])
      - Spawns *processes*
      - *Aimed* at distributed memory
      - Used as a *library*
  ][#uncover("2")[
      - *OpenMP*
        - Spawns *OS threads*
        - *Restricted* to shared-memory
        - Used with *compiler directives*
    ]
  ]

  #speaker-note[
    - MPI
      - Can also shared memory
      - We can use any version

    - OpenMP
      - We have to be aware of the implementations
  ]
])

== CUDA

#slide[
  #set align(horizon)
  #if hide-appendinx {
    place(dx: 690pt, dy: -80pt, box(width: 80pt, height: 30pt, fill: white))
  }

  #set text(size: .6em)
  #figure(
    cpu-v-gpu-arch(presentation: true, scale-axis: 170%),
  )

  #speaker-note[
    - DG highly parallel by nature
    - GPU arch. highly parallel by design
  ]
]

== Fortran's `do concurrent`

#slide[
  #if hide-appendinx {
    place(dx: 690pt, dy: -80pt, box(width: 80pt, height: 30pt, fill: white))
  }

  #grid(columns: (1.6fr, 1fr), column-gutter: 1em)[
    #figure(
      kind: raw,
      {
        set text(size: .78em)
        grid(
          columns: 1,
          column-gutter: 1em,
          row-gutter: 1em,
          align: center + horizon,
          ```f
          do concurrent (i=1:n, j=1:m)
            a(i, j) = w * b(i, j)
          end do
          ```,
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
        )
      },
    )][
    - Enables to run each iteration independently #pause

    - *Can* be parallelized with OpenMP or *OpenACC* #pause

    - Default for GPU offloading in *NVHPC* due to better performance/implementation
  ]
]

= Contributions

== Preliminary Work

#slide[
  #if hide-appendinx {
    place(dx: 690pt, dy: -80pt, box(width: 80pt, height: 30pt, fill: white))
  }

  #grid(
    columns: 2,
    column-gutter: 1em,
    [#figure(
        supplement: none,
        numbering: none,
        image("resources/imgs/icons/cmake.png"),
        caption: [#set text(size: .9em, fill: gray)
          Image courtesy of \ https://earthly.dev/blog/cmake-vs-make-diff/],
      )],
    [
      === CMake
      // - Modernizing HAWEN's build system #pause
      // - Simplified to a single library #pause
      - Fixes for *parallel compilation*, simplified the software to a single library #pause
      // - Integration with *Ninja* and *Ccache* #pause
      - *Declarative dependency management*
        - Explicit tested dependency versions
        - Ensuring build reproducibility
        - Better portability #pause // with fetch content

      === Others

      // - Integrated a *Unit Testing* framework #pause
      - Fixes for non-standard precision kinds #pause // to ensure compatibility acrosso compilers
      - *Eliminating string operations* (`trim`, `adjustl`, `select("...")`, ...) in potential GPU code
    ],
  )

  #speaker-note[
    - Ninja/Ccache
    - String operations incompatible with GPU architecture due to much simpler core design
  ]
]

== Improving Cache Locality

#slide[
  #if hide-appendinx {
    place(dx: 690pt, dy: -80pt, box(width: 80pt, height: 30pt, fill: white))
  }

  #grid(columns: 2, column-gutter: 0.1em)[#figure(
      image(height: 79%, "resources/imgs/memory_speed_comparison.gif"),
    )][
    - Concepts from *Data-Oriented Design*@DOD #pause // programming paradigm that focuses on HOW data is laied out in memory and how it flows thorught the system

    - *Reordering loops* and changing the order of the dimensions of the tensors #pause // Fortran is column major

    // These two lines of code alone represent 90% of the program runtime for a 2D elastic benchmark
    #figure({
      set text(.66em)
      ```f90
      do concurrent(l=1:n_diff_orders, k=1:n_diff_orders)
        n_dof_k = dof_map(k)
        n_dof_l = dof_map(l)
        first(k,l)%array = sum(weights(k,l)%array, dim=4)

        do concurrent(j=1:n_dof_l, i=1:n_dof_k, face=1:3, jdim=1:2, kdim=1:2)
          second(k,l)%array(kdim,jdim,face,i,j) &
            = dot_product(coeff(kdim,jdim,face,:), &
                          weigths(k,l)%array(face,i,j,:))
        end do
      end do
      ```
    })]

  #speaker-note[
    / DOD: focus on HOW data is layed out in memory and how it flows through the system

    - We want to work as much as possible with data at lower level of cache

    - Common pattern in HAWEN: matrices of tensors
  ]
]

== Replacing Inversions of Dense Matrices

#slide[
  #if hide-appendinx {
    place(dx: 690pt, dy: -80pt, box(width: 80pt, height: 30pt, fill: white))
  }

  When solving a linear system $A X = B$, $L U$ decomposition is #pause
  - *always faster* than the $A^(-1)$ form #only("2")[@DontInvertThatMatrix] #only("2")[@WhyNotInvertMatrix] #only("2")[@WhyLUbetterThanInverse] #pause
  - *more accurate* for ill-conditioned matrices #only("3")[@AccuracyAndStability[Section 14.1]] #pause

  We rewrite the previous equation to avoid computing the inverse
  - LAPACK's `*GETRF` and `*GETRS` #pause

  We replace the matrix inversion in
  + the $cal(A)$ matrix assembly
  + the computation of the HDG solution
  + some specifics in the elastic wave propagation
]

#slide(repeat: 2, self => [
  #alternatives[
    #if hide-appendinx {
      place(dx: 690pt, dy: -80pt, box(width: 80pt, height: 30pt, fill: white))
    }
    #grid(columns: 2, align: horizon, column-gutter: -4em)[#figure(
        image(width: 110%, "resources/imgs/paraview_summary.svg"),
      )][
      - Profiled using the TAU Performance System@TAU
      - Visualization with ParaProf
    ]][
    #if hide-appendinx {
      place(dx: 690pt, dy: -80pt, box(width: 80pt, height: 30pt, fill: white))
    }
    #figure(
      image(width: 100%, "resources/imgs/paraview_summary_cropped.png"),
    )
    For the bottom 5 bars we have, in order, from left to right:
    + `hdg_build_quadrature_int_2D`
    + `hdg_build_quadrature_int_2D`
    + Overhead of TAU instrumentation
    + LAPACK's `*GETRI` (matrix inverse)
    + `hdg_build_Ainv_2D`
  ]

  #speaker-note[
    - 8 MPI #sym.times 6 OpenMP
  ]
])

#slide[
  #grid(columns: 2, column-gutter: 1em)[
    #if hide-appendinx {
      place(dx: 690pt, dy: -80pt, box(width: 80pt, height: 30pt, fill: white))
    }
    #grid(columns: 1, row-gutter: .1em)[#figure(
        image(width: 99%, "resources/imgs/model_plot.svg"),
      )][#figure(
        image(width: 99%, "resources/imgs/real_part_plot.svg"),
      )]
  ][
    === Evaluation

    Benchmarked with

    - Marmousi2 2D model @Marmousi2 #pause

    - 100 thousand cells #pause

    - 169 sources (right-hand sides $cal(B)$ of global liner system) #pause

    - frequency of #zi.Hz[7] #pause

    - 8 different configurations, polynomial in $[3, 9]$ + $frak(p)$-adaptivity in $[2, 9]$
  ]
]

#slide[
  #if hide-appendinx {
    place(dx: 690pt, dy: -80pt, box(width: 80pt, height: 30pt, fill: white))
  }

  #set text(size: .8em)
  #anotinv_diagrams(width: 24cm, height: 11.8cm)
  #uncover("2")[#place(
      top + left,
      dx: -5pt,
      dy: -5pt,
      rect(width: 73%, height: 103%, fill: white.transparentize(30%)),
    )
    #place(
      top + right,
      dx: -5pt,
      dy: -5pt,
      rect(width: 16%, height: 103%, fill: white.transparentize(30%)),
    )
    #place(
      top,
      dy: -10pt,
      dx: 567pt,
      rect(width: 10%, height: 10%, fill: white.transparentize(30%)),
    )]
]

#let horizontal-anotinv-loop(config) = {
  let data = json("resources/benches/2d_elastic_marmousi.json").mesh100k
  let branches = data.keys()

  show: lq.set-label(pad: 1em)
  show lq.selector(lq.label): set align(top + right)
  lq.diagram(
    width: 25.5cm,
    height: 11.6cm,
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
  #if hide-appendinx {
    place(dx: 690pt, dy: -80pt, box(width: 80pt, height: 30pt, fill: white))
  }

  #horizontal-anotinv-loop("p9")
]

#slide[
  #if hide-appendinx {
    place(dx: 690pt, dy: -80pt, box(width: 80pt, height: 30pt, fill: white))
  }

  #set text(size: .8em)
  #anotinv_diagrams(width: 24cm, height: 11.8cm)
  #place(
    top + left,
    dx: -5pt,
    dy: -5pt,
    rect(width: 83%, height: 103%, fill: white.transparentize(30%)),
  )
  #place(
    top + right,
    dx: -5pt,
    dy: -5pt,
    rect(width: 6%, height: 103%, fill: white.transparentize(30%)),
  )
  #place(
    top,
    dy: -10pt,
    dx: 640pt,
    rect(width: 10%, height: 10%, fill: white.transparentize(30%)),
  )]

#slide[
  #if hide-appendinx {
    place(dx: 690pt, dy: -80pt, box(width: 80pt, height: 30pt, fill: white))
  }

  #horizontal-anotinv-loop("p2-9")
]

#slide[
  #if hide-appendinx {
    place(dx: 690pt, dy: -80pt, box(width: 80pt, height: 30pt, fill: white))
  }

  #set table(inset: .6em)

  Looking at the generated assembly code
  - $approx 30%$ reduction in instruction count with `MOV` and `ADD` type instructions decreasing in equal measure: *less data movement* #pause

  - dot product for face integrals accounting for $approx$ *80%* of the *total program runtime* #pause

  - no improvements with *BLAS1* or *GEMM* operations
    - a higher level of parallelism is necessary #pause
  #figure(cache-branch-misses-table-figure())
]

#heading(
  level: 2,
  depth: 2,
  context if in-outline.get() [NVHPC] else [Compiling HAWEN with the NVHPC Toolkit],
)

#slide[
  #if hide-appendinx {
    place(dx: 690pt, dy: -80pt, box(width: 80pt, height: 30pt, fill: white))
  }

  === Challenges

  Uncovered 3 compiler bugs in NVFortran + 1 in LLVM: #pause
  - \#TPR37335#only("2-")[@TPR37335] #sym.arrow.l *deadlock* in compiler #pause
  - \#TPR37469#only("3-")[@TPR37469] #sym.arrow.l *memory leak* in compiler-generated kernels #pause
  - \#TPR37570#only("4-")[@TPR37570] #sym.arrow.l incorrect propagation of `managed` attribute in OpenMP #pause
  - \#148884#only("5-")[@148884] #sym.arrow.l runtime failure of OpenMP code in MUMPS

  #speaker-note[
    First two are quite severe

    - deadlock for VALID Fortran code
  ]
]

#slide[
  #if hide-appendinx {
    place(dx: 690pt, dy: -80pt, box(width: 80pt, height: 30pt, fill: white))
  }

  === Evaluation

  Tested the acoustic case on Suroit #sym.arrow.l *A100 40GB* (*9.7* TFLOPs FP64, *19.5* TFLOPs FP32)

  #set table(inset: .5em)
  #figure(
    synthetic-data-table(presentation: true),
    caption: [Synthetic data similar to real benchmarks],
  )

  #figure(
    speedup-nvhpc-table(presentation: true),
    caption: [Speedup for different configurations],
  ) // Here mention that the A100 should only have double the perfomance in FP32 but clearly we have way more

  #speaker-note[
    - A100 should have double performance but really it's more
    - Validated with unit testing
    - benchmark on the `hdg_build_quadrature` function we saw before

    / N_e: number of cells in the mesh
    / N_q: number of quadrature point to approximate the integrals
    / N_dof: number of degrees of freedom for each cell, does not correspond exactly to the Lagrange basis function
    / N_q_tau: again quadrature points but for other coefficients
    / N_o: the number of different orders when using p-adaptivity
  ]
]

#heading(
  level: 2,
  depth: 2,
  context if in-outline.get() [cuDSS] else [Using a GPU Accelerated Sparse Solver],
)

#slide[
  #if hide-appendinx {
    place(dx: 690pt, dy: -80pt, box(width: 80pt, height: 30pt, fill: white))
  }

  #grid(
    columns: 2,
    column-gutter: 1em,
    figure(image(height: 62%, "resources/imgs/A_spy_plot.svg")),
    [
      - $cal(A) Lambda = cal(B)$ is very sparse, cannot rely on LAPACK #pause

      / MUMPS: #only("2-")[@MUMPS] sparse #underline[direct] solver used by HAWEN
        - NVFortran cannot currently compile it
        - GPU version not yet public and relies on XKBlas#only("2-")[@XKBlas], not configured for the NVHPC Toolkit #pause

      / cuDSS: sparse direct solver recently released by NVIDIA
        - Natively support for GPUs
    ],
  )
]

#slide[
  #if hide-appendinx {
    place(dx: 690pt, dy: -80pt, box(width: 80pt, height: 30pt, fill: white))
  }

  === Implementation

  - Interface between Fortran and C++ through ISO C bindings #pause

  - we had to conform to cuDSS's formalisms for matrices #pause

  === Limitations of our Implementation

  - Currently faulty at high polynomial orders

  #speaker-note[
    - COO to CSR conversion
    - CSR to dense using cuSPARSE, cuDSS only supports dense RHS
    - Communication layer built in-tree to support multithreading and MGMN mode
  ]
]

#slide[
  #if hide-appendinx {
    place(dx: 690pt, dy: -80pt, box(width: 80pt, height: 30pt, fill: white))
  }

  #grid(columns: 2, column-gutter: 1em)[#move(dx: -30pt, dy: 20pt, scale(
      120%,
      figure(image("resources/imgs/3dparaprof.png")),
    ))][
    === Evaluation

    Benchmarked with
    - Homogeneous plane waves in a #box(block(breakable: false)[$2 times 2 times 2$]) meters cube #pause

    - 100 thousand cells, polynomial order 3 (matrix of size 2206490#super[2]) #pause
    - 4 sources (right-hand sides $cal(B)$ of the global linear system) #pause
    - frequency of #mHz[2] #pause
  ]
]

#slide(repeat: 5, self => [
  #if hide-appendinx {
    place(dx: 690pt, dy: -80pt, box(width: 80pt, height: 30pt, fill: white))
  }

  #align(bottom)[
    - compared cuDSS `0.6.0` against MUMPS `5.8.0` on the Suroit cluster #pause

    - 1 combination of MPI/OpenMP for cuDSS, several for MUMPS #pause

    #set text(size: .8em)
    #cudss-v-mumps(
      width: 26cm,
      height: 8.4cm,
      highlighted: false,
      presentation: true,
    )
  ]
])

#slide[
  #if hide-appendinx {
    place(dx: 690pt, dy: -80pt, box(width: 80pt, height: 30pt, fill: white))
  }

  #align(bottom)[
    #figure(speedup-cudss-table(presentation: true))

    #set text(size: .8em)
    #cudss-v-mumps(
      width: 26cm,
      height: 8.4cm,
      highlighted: true,
      presentation: true,
    )
  ]
]

#heading(
  level: 1,
  depth: 1,
  context if in-outline.get() [Conclusions] else [Conclusions and Future Works],
)

#slide[
  #if hide-appendinx {
    place(dx: 690pt, dy: -80pt, box(width: 80pt, height: 30pt, fill: white))
  }

  === Conclusions

  - We improved the HAWEN software for forward wave problems #pause

  - We started to take advantage of heterogenous systems in HAWEN #pause

  === Future Works

  - Extend the work on GPU offloading  #pause

  - Explore GCC's support for GPU offloading through OpenMP and OpenACC #pause

  - Reduce memory usage #pause

  - Take advantage of the asynchronicity of GPU code #pause

  - Explore computation in lower precisions
]

#focus-slide[
  Thank you for your attention
]

#show: appendix

// = Appendix <touying:unoutlined>
#heading(level: 1, depth: 1, outlined: false, bookmarked: false, [Appendix])

#slide[
  #if hide-appendinx {
    place(dx: 690pt, dy: -80pt, box(width: 80pt, height: 30pt, fill: white))
  }
  === Clusters
  We used both the *DOREMI CALI v3* @CALI and *PlaFRIM* @PlaFRIM clusters, *SLURM* as scheduler

  #set text(size: .78em)
  #figure(
    clusters(presentation: true),
  )
]

#slide[
  #if hide-appendinx {
    place(dx: 690pt, dy: -80pt, box(width: 80pt, height: 30pt, fill: white))
  }

  === Localizing Loops

  #set text(.79em)
  #build-volume-integrals(presentation: true)
]

#slide[
  #if hide-appendinx {
    place(dx: 690pt, dy: -80pt, box(width: 80pt, height: 30pt, fill: white))
  }
  === What is LU?

  - Decomposition of a square matrix in a lower and upper triangular matrices

  $
    A = mat(a_11, a_12, a_13; a_21, a_22, a_23; a_31, a_32, a_33) = L U = mat(1, 0, 0; l_21, 1, 0; l_31, l_32, 1) mat(u_11, u_12, u_13; 0, u_22, u_23; 0, 0, u_33)
  $
]

#slide[
  #if hide-appendinx {
    place(dx: 690pt, dy: -80pt, box(width: 80pt, height: 30pt, fill: white))
  }

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
  === Acoustic Wave Equation

  $
    - nabla dot 1/(#pin(1)rho(bold(x))#pin(2)) nabla #pin(9)p(bold(x))#pin(10) - (#pin(5)omega^2#pin(6)) / (#pin(3)kappa(bold(x))#pin(4)) #pin(11)p(bold(x))#pin(12) = #pin(7)g(bold(x))#pin(8)
  $

  === First-order Formulation

  #grid(columns: 2, column-gutter: 1em, align: bottom)[
    Necessary for HDG@AdjointHDG
    - domain $Omega in RR^2$ with boundary $Gamma$

    - scalar pressure field as $p : Omega -> CC$
    - vectorial velocity $bold(v) : Omega -> CC^"dim"$
  ][
    $
      cases(
        - i omega rho(bold(x)) bold(v)(bold(x)) + gradient p(bold(x)) & = 0 & "in" &Omega,
        - i omega p (bold(x)) kappa(bold(x))^(-1) + gradient dot bold(v)(bold(x)) &= g(bold(x)) &"in" &Omega,
        - (rho(bold(x)) sqrt(kappa(bold(x)) rho(bold(x))^(-1)))^(-1) p(bold(x)) + bold(v)(bold(x)) dot bold(nu) &= 0 &"on" &Gamma,
      )
    $ <first-order-system>]
]

#slide[
  === Finite Difference Methods vs Galerkin Methods

  To solve numerically the wave equation we need to discretize the equation and solve the Partial Differential Equation (PDE).

  / Finite Difference Methods (FDMs): approximate differential equations through finite differences, for example $f'(x)$ can be approximated as $ f'(x) approx (f(x + Delta x) - f(x - Delta x)) / (2 Delta x). $

  / Galerkin Methods: approximate the solution itself by expressing it as a combination of basis functions and ensuring that the equation holds on average across the whole domain.
]

#slide[
  === Working with NVHPC

  #if hide-appendinx {
    place(dx: 690pt, dy: -80pt, box(width: 80pt, height: 30pt, fill: white))
  }

  Explore using the *NVHPC Toolkit* which provides
  - Fortran, C, and C++ compilers
  - General CUDA and math libraries
  - CUDA-aware OpenMPI @OpenMPI

  Special care is required
  - Files with CUDA code (`.cuf`) have to be compiled separately
  - Always specify *working precision*
  - *Conditional compilation* for CPU and GPU code
  - *Reduce data movement*, correctly use *`managed`* and *`device`* attributes
  - Offloaded routines have to be *`pure`*
]
