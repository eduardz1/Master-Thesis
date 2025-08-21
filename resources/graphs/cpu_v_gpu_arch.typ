#import "@preview/cetz:0.4.1"
#import "@preview/lilaq:0.4.0"

#cetz.canvas({
  import cetz.draw: *

  let colors = lilaq.color.map.petroff6

  rect((0, 0), (5, 5), stroke: colors.at(4), fill: colors.at(4).lighten(80%))
  rect((1,1))
  
  // rect((0, 0), (5, 5), stroke: colors.at(4), fill: colors.at(4).lighten(80%))
})
