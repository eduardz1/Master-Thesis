#import "@preview/zero:0.4.0": format-table, num, set-round

#let cache-branch-misses-table-figure() = {
  set-round(mode: "uncertainty")

  show table: format-table(none, auto, auto)
  let cache-misses-original = 308132120800
  let branch-mispredictions-original = 11756862356
  let cache-misses-new = 6383095138
  let branch-mispredictions-new = 5847115661

  let cache-improvement = (
    100 * (cache-misses-original - cache-misses-new) / cache-misses-original
  )
  let branch-improvement = (
    100
      * (branch-mispredictions-original - branch-mispredictions-new)
      / branch-mispredictions-original
  )

  table(
    align: (left, right, right),
    columns: 3,
    table.header([Metric], [Original code], [Improved version]),
    [Cache Misses],
    [#num(cache-misses-original, fixed: 11, digits: 2) #text(
        fill: red.darken(40%),
      )[(#num(cache-misses-original / cache-misses-new, digits: 2)#sym.times)]],
    [#num(cache-misses-new, fixed: 9, digits: 2) #text(
        fill: green.darken(40%),
      )[$arrow.b #num(cache-improvement, digits: 2) %$]],

    [Branch Mis-predictions],
    [#num(
        branch-mispredictions-original,
        fixed: 10,
        digits: 2,
      ) #sym.space.thin #text(
        fill: red.darken(40%),
      )[(#num(branch-mispredictions-original / branch-mispredictions-new, digits: 2)#sym.times)]],
    [#num(branch-mispredictions-new, fixed: 9, digits: 2) #text(
        fill: green.darken(40%),
      )[$arrow.b #num(branch-improvement, digits: 2) %$]],
    table.hline(y: 3, start: 0, end: 7, stroke: 1pt),
      
  )
}
