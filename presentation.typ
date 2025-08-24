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
#import "resources/tables/cache_branch_misses.typ": (
  cache-branch-misses-table-figure,
)
#import "resources/graphs/cpu_v_gpu_arch.typ": cpu-v-gpu-arch
#import "resources/graphs/hawen_schema.typ": hawen-schema
#import "resources/algorithms/forward_acoustic_problem.typ": (
  forward-acoustic-problem-alg,
)
#import "resources/utils.typ": mHz
#import "@preview/algorithmic:1.0.3": style-algorithm

#let primary = rgb("#0c4842")


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
// #show: codly-init.with()
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
        languages: codly-languages,
        zebra-fill: none,
        lang-outset: (x: -5pt, y: 5pt),
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

= Numerical Simulations of Wave Propagation

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

== HDG Methods Applied to the Acoustic Wave Problem
#let pinit-point-from = pinit-point-from.with(thickness: 1pt)
#let pinit-arrow = pinit-arrow.with(thickness: 1pt)

// #slide[
//   #align(center + horizon)[$
//       - nabla dot 1/(#pin(1)rho(bold(x))#pin(2)) nabla #pin(9)p(bold(x))#pin(10) - (#pin(5)omega^2#pin(6)) / (#pin(3)kappa(bold(x))#pin(4)) #pin(11)p(bold(x))#pin(12) = #pin(7)g(bold(x))#pin(8)
//     $

//     #pinit-highlight(1, 2, fill: highlights.at(0))
//     #pinit-point-from(
//       1,
//       offset-dy: 35pt,
//       offset-dx: -50pt,
//       body-dx: -60pt,
//       fill: colors.at(0),
//     )[density]

//     #pause

//     #pinit-highlight(3, 4, fill: highlights.at(1))
//     #pinit-point-from(3, offset-dx: 50pt, fill: colors.at(1))[bulk modulus]

//     #pause

//     #pinit-highlight(5, 6, fill: highlights.at(2))
//     #pinit-point-from(
//       5,
//       pin-dy: -15pt,
//       body-dy: -15pt,
//       offset-dy: -70pt,
//       fill: colors.at(2),
//     )[angular frequency]

//     #pause

//     #pinit-highlight(7, 8, fill: highlights.at(3))
//     #pinit-point-from(
//       8,
//       offset-dx: 80pt,
//       offset-dy: 0pt,
//       pin-dy: 0pt,
//       body-dy: -10pt,
//       fill: colors.at(3),
//     )[source]

//     #pause

//     #pinit-highlight(9, 10, fill: highlights.at(4))
//     #pinit-highlight(11, 12, fill: highlights.at(4))
//     #pinit-point-from(
//       9,
//       pin-dy: 20pt,
//       offset-dy: 100pt,
//       body-dy: -10pt,
//       fill: colors.at(4),
//     )[#pin(13)scalar pressure field]
//     #pinit-arrow(13, 11, start-dx: 30pt, end-dy: 20pt, fill: colors.at(4))
//   ]
// ]

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
  #set text(size: .7em)
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
    - Aimed (but not restricted) to the use in *distributed memory* systems
  ]
]

== OpenMP

#slide[
  #set align(horizon)
  #grid(columns: 2, column-gutter: 3em)[
    #set text(size: 1.3em)
    #figure(shared-memory(presentation: true))][
    - Spawns *OS threads* #pause
    - Restricted to *shared-memory* environments
  ]
]

== OpenACC

== Clusters

We used both the *DOREMI CALI v3* @CALI and *PlaFRIM* @PlaFRIM clusters

#[
  #set text(size: .78em)
  #figure(
    clusters(),
  )

  #speaker-note[
    - tradeoff between core count and core complexity
    -
  ]
]

// = Contributions

// == Preliminary Contributions

// == Exploring Alternative Sparse Solvers

// == Accelerating the Matrix Creation

// === Replacing Matrix Inversions

// === Improving Cache Locality

// === Compiling HAWEN with NVFortran and Taking Advantage of GPU Offloading

= Contributions

== Preliminary Work

== Removing Matrix Inversions and Optimizing Cache Locality

#slide[
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
          stroke: lq.color.map.petroff6.at(branch_idx),
          fill: lq.color.map.petroff6.at(branch_idx).transparentize(90%),
          median: lq.color.map.petroff6.at(branch_idx),
          outlier-stroke: lq.color.map.petroff6.at(branch_idx),
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
  - dot product for face integrals accounting for $approx 80%$ of the *total program runtime* #pause
  - no improvements with BLAS or GEMM operations: a higher level of parallelism is necessary #pause
  #figure(cache-branch-misses-table-figure())
]

== Using a GPU Accelerated Sparse Solver

#slide[
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

= Conclusions

#focus-slide[
  Thank you for your attention
]
