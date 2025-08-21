#import "@preview/cetz:0.4.0"
#import "@preview/lilaq:0.4.0" as lq
#import "@preview/touying:0.6.1": pause, touying-reducer

#let fem-dg-hdg-graph(len: 2cm, stroke-width: .6pt, presentation: false) = {
  let cetz-canvas = if presentation {
    touying-reducer.with(
      reduce: cetz.canvas,
      cover: cetz.draw.hide.with(bounds: true),
    )
  } else { cetz.canvas }

  cetz-canvas(length: len, {
    import cetz.draw: *

    let blue = lq.color.map.petroff6.at(0)
    let red = lq.color.map.petroff6.at(2)

    let stroke-blue = stroke-width + blue.darken(40%)
    let stroke-red = stroke-width + red.darken(40%)

    line((0, 0), (1, 0), (0, 1), (0, 0), stroke: stroke-blue)
    line((0, 1), (1, 1), (1, 0), stroke: stroke-blue)
    circle((0, 0), radius: .05, fill: blue, stroke: stroke-blue)
    circle((1, 0), radius: .05, fill: blue, stroke: stroke-blue)
    circle((0, 1), radius: .05, fill: blue, stroke: stroke-blue)
    circle((1, 1), radius: .05, fill: blue, stroke: stroke-blue)
    // content((0, -.2), $alpha_1$)
    // content((1, -.2), $alpha_2$)
    // content((0, 1.2), $alpha_3$)
    // content((1, 1.2), $alpha_4$)
    content((0.5, -0.5), [FEM])

    line((2, -.05), (3, -.05), (2, .95), (2, -.05), stroke: stroke-blue)
    line(
      (3.1, 0.05),
      (3.1, 1.05),
      (2.1, 1.05),
      (3.1, 0.05),
      stroke: stroke-blue,
    )
    circle((2, -.05), radius: .05, fill: blue, stroke: stroke-blue)
    circle((3, -.05), radius: .05, fill: blue, stroke: stroke-blue)
    circle((2, .95), radius: .05, fill: blue, stroke: stroke-blue)
    circle((3.1, 1.05), radius: .05, fill: blue, stroke: stroke-blue)
    circle((2.1, 1.05), radius: .05, fill: blue, stroke: stroke-blue)
    circle((3.1, 0.05), radius: .05, fill: blue, stroke: stroke-blue)
    // content((2, -.2), $alpha_1$)
    // content((3, -.2), $alpha_2$)
    // content((1.8, 0.95), $alpha_3$)
    // content((3.3, 0.05), $alpha_4$)
    // content((3.1, 1.25), $alpha_5$)
    // content((2.15, 1.25), $alpha_6$)
    content((2.5, -0.5), [DG])

    line((4, -.1), (5, -.1), (4, .9), (4, -.1), stroke: stroke-blue)
    line((5.2, 0.1), (5.2, 1.1), (4.2, 1.1), (5.2, 0.1), stroke: stroke-blue)
    circle((4, -.1), radius: .05, fill: blue, stroke: stroke-blue)
    circle((5, -.1), radius: .05, fill: blue, stroke: stroke-blue)
    circle((4, .9), radius: .05, fill: blue, stroke: stroke-blue)
    circle((5.2, 1.1), radius: .05, fill: blue, stroke: stroke-blue)
    circle((5.2, .1), radius: .05, fill: blue, stroke: stroke-blue)
    circle((4.2, 1.1), radius: .05, fill: blue, stroke: stroke-blue)

    if presentation { (pause,) }

    line((4, -.25), (5, -.25), stroke: stroke-red)
    line((3.85, -.1), (3.85, .9), stroke: stroke-red)
    line((4.1, 1), (5.1, 0), stroke: stroke-red)
    line((4.2, 1.25), (5.2, 1.25), stroke: stroke-red)
    line((5.35, 0.1), (5.35, 1.1), stroke: stroke-red)

    circle((4, -.25), radius: .05, fill: red, stroke: stroke-red)
    circle((5, -.25), radius: .05, fill: red, stroke: stroke-red)
    circle((3.85, -.1), radius: .05, fill: red, stroke: stroke-red)
    circle((3.85, .9), radius: .05, fill: red, stroke: stroke-red)
    circle((4.1, 1), radius: .05, fill: red, stroke: stroke-red)
    circle((5.1, 0), radius: .05, fill: red, stroke: stroke-red)
    circle((4.2, 1.25), radius: .05, fill: red, stroke: stroke-red)
    circle((5.2, 1.25), radius: .05, fill: red, stroke: stroke-red)
    circle((5.35, 0.1), radius: .05, fill: red, stroke: stroke-red)
    circle((5.35, 1.1), radius: .05, fill: red, stroke: stroke-red)
    content((4.5, -0.5), [HDG])
  })
}
