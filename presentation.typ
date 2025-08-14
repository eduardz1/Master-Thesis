#import "@preview/touying:0.6.1": *
#import themes.dewdrop: *
#import "@preview/codly:1.3.0": *
#import "@preview/codly-languages:0.1.8": *
#import "@preview/numbly:0.1.0": numbly
#import "@preview/lilaq:0.4.0" as lq
#import "@preview/zero:0.4.0": set-round
#import "resources/graphs/cudss_v_mumps.typ": cudss-v-mumps
#import "resources/graphs/anotinv_loop_order.typ": anotinv_diagrams

#set-round(mode: "uncertainty")

#show: dewdrop-theme.with(
  aspect-ratio: "16-9",
  footer: self => self.info.institution,
  navigation: "mini-slides",
  alpha: 30%,
  config-common(preamble: {
    codly(
      languages: codly-languages,
      zebra-fill: none,
      lang-outset: (x: -5pt, y: 5pt),
      number-align: right + horizon,
      number-format: it => text(fill: luma(200), str(it)),
    )
  }),
  config-info(
    title: [Performance Analysis and CUDA Acceleration \ of the Open Source Software "HAWEN"],
    subtitle: [Master thesis project at INRIA],
    author: [Eduard Antonovic Occhipinti],
    date: datetime.today(),
    institution: [Université Grenoble Alpes],
  ),
)

#title-slide()

= Introduction

= Numerical Simulations of Wave Propagation

== HAWEN

== HDG Methods Applied to the Acoustic Wave Problem

= Tools & Technologies

= Implementation

= Results

== Removing Matrix Inversions and Optimizing Cache Locality

#lorem(150)

#anotinv_diagrams(width: 24cm, height: 11.5cm)

#anotinv_diagrams(width: 24cm, height: 11.5cm)
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

#let horizontal-anotinv-loop(config) = {
  let data = json("resources/benches/2d_elastic_marmousi.json").mesh100k
  let branches = data.keys()

  show: lq.set-label(pad: 1em)
  show lq.selector(lq.label): set align(top + right)
  lq.diagram(
    width: 25.5cm,
    xlabel: [Time in seconds],
    height: 10.5cm,
    yaxis: (ticks: ((0.5, [#config]),), subticks: 0),
    ..for (branch_idx, branch_name) in branches.enumerate() {
      (
        lq.hboxplot(
          y: 0.5,
          label: branch_name,
          stroke: lq.color.map.petroff10.at(branch_idx),
          fill: lq.color.map.petroff10.at(branch_idx).transparentize(90%),
          median: lq.color.map.petroff10.at(branch_idx),
          outlier-stroke: lq.color.map.petroff10.at(branch_idx),
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

#horizontal-anotinv-loop("p9")

#anotinv_diagrams(width: 24cm, height: 11.5cm)
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

#horizontal-anotinv-loop("pI01")

== Using a GPU Accelerated Sparse Solver

#lorem(150)

#cudss-v-mumps(width: 26cm, height: 10cm, highlighted: false)
#cudss-v-mumps(width: 26cm, height: 10cm, highlighted: true)

= Conclusions
