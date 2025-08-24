#import "@preview/fletcher:0.5.8" as fletcher: diagram, edge, node
#import "@preview/cetz:0.4.0"
#import "@local/ensimag-nificent-thesis:0.1.0": balance
#import "@preview/lilaq:0.4.0" as lq
#import "@preview/touying:0.6.1": pause, touying-reducer

#let hawen-schema(presentation: false) = {
  let colors = lq.color.map.okabe-ito
  let blue = colors.at(0)
  let yellow = colors.at(1)
  let grey = colors.at(2)
  set text(fill: white, weight: "bold")

  let boxes-width = if presentation { 11cm } else { 6cm }

  let diagram-content = (
    node(
      (1, 0),
      fill: grey,
      stroke: white,
      balance[Initial models for the physical properties of the medium],
      width: boxes-width,
    ),
    if presentation { pause },
    edge("->", stroke: 1pt + grey),
    node(
      (1, 1),
      block(
        inset: .2em,
        balance[Simulation of the wave propagation using the given properties of the medium],
      ),
      width: boxes-width,
      fill: yellow,
      extrude: (0, -3),
      stroke: 1pt + white,
    ),
    if presentation { pause },
    node(
      (0, 0),
      fill: grey,
      stroke: white,
      balance[Measured data from acquisition],
      width: boxes-width,
    ),
    edge((0, 0), (0, 2), "->", stroke: 1pt + grey),
    edge((1, 1), "d,l", "->", stroke: 1pt + grey),
    node(
      (0, 2),
      block(
        inset: .2em,
        balance[Comparison between the observations and the simulations],
      ),
      extrude: (0, -3),
      width: boxes-width,
      fill: blue,
      stroke: (paint: white, dash: "dashed", thickness: 1pt),
    ),
    if presentation { pause },
    edge("->", stroke: 1pt + grey),
    node(
      (0, 3),
      block(inset: .2em, balance[Optimization]),
      extrude: (0, -3),
      width: boxes-width,
      fill: blue,
      stroke: (paint: white, dash: "dashed", thickness: 1pt),
    ),
    if presentation { pause },
    edge("->", stroke: 1pt + grey),
    node(
      (1, 3),
      block(
        inset: .2em,
        balance[Update of the physical properties of the medium],
      ),
      extrude: (0, -3),
      width: boxes-width,
      fill: blue,
      stroke: (paint: white, dash: "dashed", thickness: 1pt),
    ),
    if presentation { pause },
    edge(
      (1, 3),
      (1, 1),
      "->",
      text(fill: grey)[next iteration],
      shift: -10pt,
      stroke: 1pt + grey,
    ),
  )

  let diag = if presentation {
    touying-reducer.with(
      reduce: fletcher.diagram,
      cover: fletcher.hide,
    )
  } else { diagram }

  diag(
    spacing: (1.5em, 1em),
    node-corner-radius: .5em,
    ..diagram-content,
  )
}
