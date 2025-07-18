#import "@preview/lilaq:0.4.0" as lq

= Discussion of Results

This is a generic title. Replace it with an actual title that describes the context of the work.

Discussion lessons learned from the experiments, and new problems that are raised.

== Results of the removal of calls of matrix inversion // TODO: fix this title

#let anotinv_diagrams(
  mesh: "mesh100k",
  additional_plots: none,
  data: json("../resources/benches/2d_elastic_marmousi.json"),
) = for (
  mesh_name,
  mesh_data,
) in data {
  let branches = mesh_data.keys()
  let different_orders = mesh_data.at(branches.first()).keys().enumerate()

  if mesh_name == mesh {
    lq.diagram(
      ylabel: [seconds],
      width: 14cm,
      height: 10cm,
      legend: lq.legend(position: top + left, ..for (
        branch_idx,
        branch_name,
      ) in branches.enumerate() {
        (
          line(stroke: 1pt + lq.color.map.petroff10.at(branch_idx)),
          branch_name,
        )
      }),
      title: mesh_name,
      xaxis: (ticks: different_orders),
      ..for (p_order_idx, p_order) in mesh_data
        .at(branches.first())
        .keys()
        .enumerate() {
        for (branch_idx, branch_name) in branches.enumerate() {
          (
            lq.boxplot(
              x: p_order_idx,
              label: branch_name,
              stroke: lq.color.map.petroff10.at(branch_idx),
              median: lq.color.map.petroff10.at(branch_idx),
              outlier-stroke: lq.color.map.petroff10.at(branch_idx),
              mesh_data
                .at(branch_name)
                .at(p_order)
                .successful_runs
                .map(run => {
                  run.elapsed_time_seconds
                }),
            ),
          )
        }
      },
      ..additional_plots, // I want to zoom in on P9
    )
  }
}

#let subplots(
  mesh: "mesh100k",
  data: json("../resources/benches/2d_elastic_marmousi.json"),
) = (
  lq.rect(5.6, 50, width: 0.8, height: 60, stroke: 0.5pt),
  lq.place(45%, 40%, lq.diagram(
    width: 7cm,
    height: 3cm,
    yaxis: (
      ticks: ("p9",).enumerate(),
    ),
    margin: 5%,
    fill: white,
    lq.hboxplot(
      stroke: lq.color.map.petroff10.at(0),
      median: 2pt + lq.color.map.petroff10.at(0),
      outlier-stroke: lq.color.map.petroff10.at(0),
      y: 0,
      data
        .at(mesh)
        .at("anotinv")
        .at("p9")
        .successful_runs
        .map(run => run.elapsed_time_seconds),
    ),
    lq.hboxplot(
      stroke: lq.color.map.petroff10.at(1),
      median: 2pt + lq.color.map.petroff10.at(1),
      outlier-stroke: lq.color.map.petroff10.at(1),
      y: 0,
      data
        .at(mesh)
        .at("master")
        .at("p9")
        .successful_runs
        .map(run => run.elapsed_time_seconds),
    ),
  )),
)

#figure(
  anotinv_diagrams(mesh: "mesh100k", additional_plots: none),
  caption: "Sped-up of the matrix creation time for the mesh100k mesh when replacing calls to matrix inversion.",
)
