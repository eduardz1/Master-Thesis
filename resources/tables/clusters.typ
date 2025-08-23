#import "@preview/zero:0.4.0": zi

#let GB = zi.declare("GB")
#let GB-core = zi.declare("GB/core").with(fraction: "inline")
#let MT-s = zi.declare("MT/s").with(fraction: "inline")

#let clusters() = table(
  columns: 4,
  align: left + horizon,
  inset: 1em,
  table.header([Name], [CPUs], [Memory], [GPUs]),
  [Suroit[01-22]],
  [$2 times 24$ core AMD Zen4 Genoa EPYC 9224 \@ #zi.GHz[2.5]],
  [#GB[256] (#GB-core[5.3]) \@ #MT-s[4800]],
  table.cell(align: center)[/],
  [Sirocco[22-25]],
  [$2 times 32$ core AMD Zen3 Milan EPYC 7513 \@ #zi.GHz[2.6]],
  [#GB[512] (#GB-core[8]) \@ #MT-s[3200]],
  [$2 times$ NVIDIA A100 (#GB[40])],
  table.hline(y: 3, start: 0, end: 4, stroke: 1pt),
)
