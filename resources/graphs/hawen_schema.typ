#import "@preview/fletcher:0.5.8" as fletcher: diagram, edge, node
#import "@preview/cetz:0.4.0"
#import "@preview/lilaq:0.4.0" as lq
#import "@preview/touying:0.6.1": pause, touying-reducer

#let hawen-schema(presentation: false) = {
  let blue = lq.color.map.petroff6.at(0)
  let yellow = lq.color.map.petroff6.at(1)

  if not presentation {
    let boxes-width = 6cm
    diagram(
      spacing: (1cm, 0.5cm),
      node-corner-radius: 3pt,
      node-stroke: 0.5pt,
      {
        node((0, 0), [Measured data from acquisition], width: boxes-width)

        edge((0, 0), (0, 2), "->")

        node(
          (1, 0),
          [Initial models for the physical properties of the medium],
          width: boxes-width,
        )

        edge("->")

        node(
          (1, 1),
          [Simulation of the wave propagation using the given properties of the medium],
          width: boxes-width,
          fill: yellow.lighten(80%),
          extrude: (0, -3),
          stroke: (paint: yellow),
        )

        edge("d,l", "->")

        node(
          (0, 2),
          [Comparison between the observations and the simulations],
          width: boxes-width,
          fill: blue.lighten(80%),
          stroke: (paint: blue, dash: "dashed"),
        )

        edge("->")

        node(
          (0, 3),
          [Optimization],
          width: boxes-width,
          fill: blue.lighten(80%),
          stroke: (paint: blue, dash: "dashed"),
        )

        edge("->")

        node(
          (1, 3),
          [Update of the physical properties of the medium],
          width: boxes-width,
          fill: blue.lighten(80%),
          stroke: (paint: blue, dash: "dashed"),
        )

        edge((1, 3), (1, 1), "->", [next iteration], shift: -10pt)
      },
    )
  } else {
    let boxes-width = 11cm
    let fletcher-diagram = touying-reducer.with(
      reduce: fletcher.diagram,
      cover: fletcher.hide,
    )

    fletcher-diagram(
      spacing: (1cm, 0.5cm),
      node-corner-radius: 3pt,
      node-stroke: 0.5pt,
      node(
        (1, 0),
        [Initial models for the physical properties of the medium],
        width: boxes-width,
      ),

      pause,

      edge("->"),

      node(
        (1, 1),
        [Simulation of the wave propagation using the given properties of the medium],
        width: boxes-width,
        fill: yellow.lighten(80%),
        extrude: (0, -6),
        stroke: (paint: yellow),
      ),
      pause,


      node((0, 0), [Measured data from acquisition], width: boxes-width),

      edge((0, 0), (0, 2), "->"),

      edge((1, 1), "d,l", "->"),

      node(
        (0, 2),
        [Comparison between the observations and the simulations],
        width: boxes-width,
        fill: blue.lighten(80%),
        stroke: (paint: blue, dash: "dashed"),
      ),
      pause,
      edge("->"),

      node(
        (0, 3),
        [Optimization],
        width: boxes-width,
        fill: blue.lighten(80%),
        stroke: (paint: blue, dash: "dashed"),
      ),
      pause,

      edge("->"),

      node(
        (1, 3),
        [Update of the physical properties of the medium],
        width: boxes-width,
        fill: blue.lighten(80%),
        stroke: (paint: blue, dash: "dashed"),
      ),
      pause,

      edge((1, 3), (1, 1), "->", [next iteration], shift: -10pt),
    )
  }
}
