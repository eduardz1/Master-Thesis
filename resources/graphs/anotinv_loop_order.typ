#import "@preview/lilaq:0.4.0" as lq

#let anotinv_diagrams(
  mesh: "mesh100k",
  additional_plots: none,
  data: json("../benches/2d_elastic_marmousi.json"),
  height: 19.5cm,
  width: 12.6cm
) = for (
  mesh_name,
  mesh_data,
) in data {
  let branches = mesh_data.keys()
  let different_orders = mesh_data.at(branches.first()).keys().enumerate()

  if mesh_name == mesh {
    show: lq.set-label(pad: 1em)
    show lq.selector(lq.label): set align(top + right)

    lq.diagram(
      ylabel: [Time in seconds],
      width: width,
      height: height,
      ylim: (0, auto),
      legend: lq.legend(position: top + left, ..for (
        branch_idx,
        branch_name,
      ) in branches.enumerate() {
        (
          line(stroke: 1pt + lq.color.map.petroff6.at(branch_idx)),
          branch_name,
        )
      }),
      // title: mesh_name,
      xaxis: (ticks: different_orders, subticks: 0),
      ..for (p_order_idx, p_order) in mesh_data
        .at(branches.first())
        .keys()
        .enumerate() {
        for (branch_idx, branch_name) in branches.enumerate() {
          (
            lq.boxplot(
              x: p_order_idx,
              label: branch_name,
              stroke: lq.color.map.petroff6.at(branch_idx),
              fill: lq.color.map.petroff6.at(branch_idx).transparentize(90%),
              median: lq.color.map.petroff6.at(branch_idx),
              outlier-stroke: lq.color.map.petroff6.at(branch_idx),
              mesh_data
                .at(branch_name)
                .at(p_order)
                .successful_runs
                .map(run => {
                  run.matrix_creation_time_seconds
                }),
            ),
          )
        }
      },
      ..additional_plots, // I want to zoom in on P9
    )
  }
}