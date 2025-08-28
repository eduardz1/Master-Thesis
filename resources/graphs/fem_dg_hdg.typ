#import "@preview/cetz:0.4.0"
#import "@preview/lilaq:0.4.0" as lq
#import "@preview/touying:0.6.1": pause, touying-reducer

#let fem-dg-hdg-graph(len: 2cm, stroke-width: .7pt, presentation: false) = {
  let cetz-canvas = if presentation {
    touying-reducer.with(
      reduce: cetz.canvas,
      cover: cetz.draw.hide.with(bounds: true),
    )
  } else { cetz.canvas }

  cetz-canvas(length: len, {
    import cetz.draw: *

    // let blue = lq.color.map.okabe-ito.at(0)
    let blue = lq.color.map.okabe-ito.at(0).lighten(80%)
    let stroke-blue = stroke-width + lq.color.map.okabe-ito.at(0)
    let red = lq.color.map.okabe-ito.at(5).lighten(80%)
    // let red = lq.color.map.okabe-ito.at(5)
    let stroke-red = stroke-width + lq.color.map.okabe-ito.at(5)

    let rad = .045

    let l(dx: 0, dy: 0) = {
      line(
        (2 + dx, dy),
        (3 + dx, dy),
        (2 + dx, 1 + dy),
        (2 + dx, dy),
        stroke: stroke-blue,
      )
      circle((2 + dx, dy), radius: rad, fill: blue, stroke: stroke-blue)
      circle((2.25 + dx, dy), radius: rad, fill: blue, stroke: stroke-blue)
      circle((2.5 + dx, dy), radius: rad, fill: blue, stroke: stroke-blue)
      circle((2.75 + dx, dy), radius: rad, fill: blue, stroke: stroke-blue)
      circle((3 + dx, dy), radius: rad, fill: blue, stroke: stroke-blue)
      circle((2 + dx, 1 + dy), radius: rad, fill: blue, stroke: stroke-blue)
      circle((2 + dx, .25 + dy), radius: rad, fill: blue, stroke: stroke-blue)
      circle((2 + dx, .5 + dy), radius: rad, fill: blue, stroke: stroke-blue)
      circle((2 + dx, .75 + dy), radius: rad, fill: blue, stroke: stroke-blue)
      circle(
        (2.25 + dx, .75 + dy),
        radius: rad,
        fill: blue,
        stroke: stroke-blue,
      )
      circle((2.5 + dx, .5 + dy), radius: rad, fill: blue, stroke: stroke-blue)
      circle(
        (2.75 + dx, .25 + dy),
        radius: rad,
        fill: blue,
        stroke: stroke-blue,
      )
      circle(
        (2.25 + dx, .25 + dy),
        radius: rad,
        fill: blue,
        stroke: stroke-blue,
      )
      circle((2.5 + dx, .25 + dy), radius: rad, fill: blue, stroke: stroke-blue)
      circle((2.25 + dx, .5 + dy), radius: rad, fill: blue, stroke: stroke-blue)
    }

    let u(dx: 0, dy: 0) = {
      rotate(z: 180deg)
      l(dx: dx - 5.2, dy: dy - 1.1)
      rotate(z: -180deg)
    }


    let fem(cx: 0, cy: 0) = {
      l(dx: cx, dy: cy)
      u(dx: cx, dy: cy)
      content((2.5 + cx, -0.5 + cy), [FEM])
    }

    let dg(cx: 0, cy: 0) = {
      l(dx: cx, dy: -.05 + cy)
      u(dx: .1 + cx, dy: .05 + cy)
      content((2.5 + cx, -0.5 + cy), [DG])
    }

    let hdg(cx: 0, cy: 0) = {
      l(dx: cx, dy: cy + -.1)
      u(dx: cx + .2, dy: cy + .1)

      // if presentation { (pause,) }

      let face(fx: 0, fy: 0, diagonal: false) = if not diagonal {
        line((2 + fx, fy), (3 + fx, fy), stroke: stroke-red)
        circle((2 + fx, fy), radius: rad, fill: red, stroke: stroke-red)
        circle(
          (2.25 + fx, fy),
          radius: rad,
          fill: red,
          stroke: stroke-red,
        )
        circle((2.5 + fx, fy), radius: rad, fill: red, stroke: stroke-red)
        circle((2.75 + fx, fy), radius: rad, fill: red, stroke: stroke-red)
        circle(
          (3 + fx, fy),
          radius: rad,
          fill: red,
          stroke: stroke-red,
        )
      } else {
        // impossible to get it right with rotate
        line((2 + fx, 1 + fy), (3 + fx, 0 + fy), stroke: stroke-red)
        circle((2 + fx, 1 + fy), radius: rad, fill: red, stroke: stroke-red)
        circle(
          (2.25 + fx, .75 + fy),
          radius: rad,
          fill: red,
          stroke: stroke-red,
        )
        circle((2.5 + fx, .5 + fy), radius: rad, fill: red, stroke: stroke-red)
        circle(
          (2.75 + fx, .25 + fy),
          radius: rad,
          fill: red,
          stroke: stroke-red,
        )
        circle((3 + fx, fy), radius: rad, fill: red, stroke: stroke-red)
      }

      face(fx: cx, fy: cy - .1 - .15)
      face(fx: cx + .2, fy: cy + 1.25)
      rotate(z: 90deg)
      face(fx: cx - 4.1, fy: cy - 3.85)
      rotate(z: -90deg)
      rotate(z: 90deg)
      face(fx: cx - 3.9, fy: cy - 5.35)
      rotate(z: -90deg)

      face(fx: cx + .1, fy: cy, diagonal: true)
      content((2.5 + cx, -0.5 + cy), [HDG])
    }

    fem(cx: -2)
    dg()
    hdg(cx: 2)
  })
}

#fem-dg-hdg-graph()
