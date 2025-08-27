#import "@preview/fletcher:0.5.8" as fletcher: diagram, edge, node
#import "@preview/lilaq:0.4.0" as lq

#set page(width: auto, height: auto, margin: 5mm, fill: white)
#let colors = lq.color.map.okabe-ito

#let shared-memory(presentation: false) = {
  set text(fill: white, weight: "medium", font: "Fira Code")
  diagram(
    spacing: (
      if not presentation { 3em } else { 3em },
      if not presentation { 1.5em } else { 1em },
    ),

    node(
      (0, 0),
      width: 7cm,
      [Memory],
      fill: colors.at(1),
    ),
    node(
      (-.4, -2),
      [CPU],
      fill: colors.at(0),
      shape: fletcher.shapes.hexagon,
    ),
    node(
      (-.0, -2),
      [CPU],
      fill: colors.at(0),
      shape: fletcher.shapes.hexagon,
    ),
    node(
      (.4, -2),
      [CPU],
      fill: colors.at(0),
      shape: fletcher.shapes.hexagon,
    ),
    edge((-.4, -2), (-.4, 0), "<=>", stroke: 1pt + colors.at(4)),
    edge((0, -2), (0, 0), "<=>", stroke: 1pt + colors.at(4)),
    edge((.4, -2), (.4, 0), "<=>", stroke: 1pt + colors.at(4)),
  )
}

#let distributed-memory(presentation: false) = {
  set text(fill: white, weight: "medium", font: "Fira Code")
  diagram(
    spacing: (
      if not presentation { 3em } else { 2em },
      if not presentation { 1.5em } else { .6em },
    ),

    node(
      (-.2, -4),
      [Network],
      shape: fletcher.shapes.pill,
      fill: colors.at(3),
    ),
    node(
      (-1, 0),
      [Memory],
      fill: colors.at(1),
    ),
    node(
      (-.2, 0),
      [Memory],
      fill: colors.at(1),
    ),
    node(
      (.7, 0),
      [Memory],
      fill: colors.at(1),
    ),
    node(
      (-1, -2),
      [CPU],
      fill: colors.at(0),
      shape: fletcher.shapes.hexagon,
    ),
    node(
      (-.2, -2),
      [CPU],
      fill: colors.at(0),
      shape: fletcher.shapes.hexagon,
    ),
    node(
      (.7, -2),
      [CPU],
      fill: colors.at(0),
      shape: fletcher.shapes.hexagon,
    ),
    edge((-1, -2), (-1, 0), "<=>", stroke: 1pt + colors.at(4)),
    edge((-1, -2), (-.2, -4), bend: 40deg, "<=>", stroke: 1pt + colors.at(4)),
    edge((-.2, -2), (-.2, -4), "<=>", stroke: 1pt + colors.at(4)),
    edge((.7, -2), (-.2, -4), bend: -40deg, "<=>", stroke: 1pt + colors.at(4)),
    edge((-.2, -2), (-.2, 0), "<=>", stroke: 1pt + colors.at(4)),
    edge((.7, -2), (.7, 0), "<=>", stroke: 1pt + colors.at(4)),
  )
}

// #shared-memory()
// #distributed-memory()
