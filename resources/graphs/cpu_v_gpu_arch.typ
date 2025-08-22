#import "@preview/cetz:0.4.1"
#import "@preview/lilaq:0.4.0"

#let std-rotate = rotate

#let cpu-v-gpu-arch(scale-axis: 100%) = {
  set text(weight: "bold", size: .8em)
  scale(x: scale-axis, y: scale-axis, reflow: true)[
    #cetz.canvas({
      import cetz.draw: *

      let colors = lilaq.color.map.petroff6

      let cpu(dx: 0, dy: 0) = {
        content((4 + dx, 2.5 + dy))[CPU]

        // RAM
        rect(
          (1 + dx, 3 + dy),
          (7 + dx, 4 + dy),
          stroke: white,
          fill: colors.at(5),
        )
        content((4 + dx, 3.5 + dy), text(fill: white)[RAM])

        // L3 Cache
        rect(
          (3.5 + dx, 4 + dy),
          (4.5 + dx, 8 + dy),
          stroke: white,
          fill: colors.at(1),
        )
        content((4 + dx, 6 + dy), std-rotate(-90deg, reflow: true)[#text(
            fill: white,
          )[L3 Cache]])

        let cpu-core(cx: 0, cy: 0, highlight: false) = {
          rect(
            (1 + cx, 5.5 + cy),
            (3.5 + cx, 6 + cy),
            stroke: white,
            fill: colors.at(1),
          )
          content((2.2 + cx, 5.75 + cy), [#text(
              fill: white,
            )[L1/L2 Cache]])
          rect(
            (1 + cx, 5 + cy),
            (3.5 + cx, 5.5 + cy),
            stroke: white,
            fill: colors.at(2),
          )
          content((2.2 + cx, 5.25 + cy), [#text(
              fill: white,
            )[Control]])
          rect(
            (1 + cx, 4 + cy),
            (3.5 + cx, 5 + cy),
            stroke: white,
            fill: colors.at(0),
          )
          content((2.2 + cx, 4.45 + cy), [#text(
              fill: white,
            )[Compute]])

          if highlight {
            rect(
              (1 + cx, 4 + cy),
              (3.5 + cx, 6 + cy),
              stroke: fuchsia,
              fill: none,
            )
            content((2.2 + cx, 6.3 + cy), text(
              fill: fuchsia.darken(30%),
            )[SIMD Unit])
          }
        }

        cpu-core()
        cpu-core(cx: 3.5 + dx)
        cpu-core(cx: 3.5 + dx, cy: 2 + dy, highlight: true)
        cpu-core(cy: 2 + dy)
      }

      cpu()

      let gpu(dx: 0, dy: 0) = {
        content((5.5 + dx, 2.5 + dy))[GPU]

        // VRAM
        rect(
          (1 + dx, 3 + dy),
          (10 + dx, 4 + dy),
          stroke: white,
          fill: colors.at(5),
        )
        content((5.5 + dx, 3.5 + dy), text(fill: white)[VRAM])

        // L2 Cache
        rect(
          (1 + dx, 5.7 + dy),
          (10 + dx, 6.3 + dy),
          stroke: white,
          fill: colors.at(1),
        )
        content((5.5 + dx, 6 + dy), text(
          fill: white,
        )[L2 Cache])

        let sm(sx: 0, sy: 0) = {
          rect(
            (1 + sx, 5 + sy),
            (1.5 + sx, 4 + sy),
            stroke: white,
            fill: colors.at(2),
          )
          rect(
            (2 + sx, 5 + sy),
            (1.5 + sx, 4 + sy),
            stroke: white,
            fill: colors.at(1),
          )

          let warp(wx: 0, wy: 0) = {
            rect(
              (2 + sx + wx, 5 + sy + wy),
              (3 + sx + wx, 4 + sy + wy),
              stroke: white,
              fill: colors.at(0),
            )
            grid(
              (2 + sx + wx, 5 + sy + wy),
              (3 + sx + wx, 4 + sy + wy),
              stroke: .5pt + white,
              step: .125,
            )
          }

          warp()
          warp(wx: 1)
          warp(wx: 2)
          warp(wx: 3)
          warp(wx: 4)
          warp(wx: 5)
          warp(wx: 6)
          warp(wx: 7)

          // Just to have a nicer border
          rect(
            (1 + sx, 5 + sy),
            (10 + sx, 4 + sy),
            stroke: white,
            fill: none,
          )
        }


        sm(sx: dx, sy: dy)
        sm(sx: dx, sy: dy + 3)

        content((5.5 + dx, 5.25 + dy), [#sym.dots.v])
        content((5.5 + dx, 6.75 + dy), [#sym.dots.v])

        rect((1 + dx, 7 + dy), (10 + dx, 8 + dy), fill: none, stroke: fuchsia)
        content((5.5 + dx, 8.3 + dy), text(
          fill: fuchsia.darken(30%),
        )[SIMT Unit (Streaming multiprocessor)])
        rect((2 + dx, 4 + dy), (3 + dx, 5 + dy), fill: none, stroke: fuchsia)
        content((2.5 + dx, 5.3 + dy), text(
          fill: fuchsia.darken(30%),
        )[SIMD Unit (Warp)])
      }

      gpu(dx: 7)
    })]
}

#cpu-v-gpu-arch(scale-axis: 80%)
