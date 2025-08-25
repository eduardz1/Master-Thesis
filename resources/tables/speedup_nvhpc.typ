#import "@preview/zero:0.4.0": num

#let cpu_64 = 68.575575138999994
#let cpu_32 = 42.075588857299998
#let gpu_64 = 11.11494379790000
#let gpu_32 = 2.521715399800000

#let speedup-nvhpc-table(presentation: false) = table(
  align: (left, ..(right,) * 4),
  columns: 5,
  table.header(
    [],
    [CPU#sub[FP64] (Baseline)],
    [CPU#sub[FP32]],
    [GPU#sub[FP64]],
    [GPU#sub[FP64]],
  ),
  [#smallcaps[*Speedup*]],
  [#num(cpu_64 / cpu_64)#sym.times (#num(cpu_64, digits: 2) seconds)],
  [#num(cpu_64 / cpu_32, digits: 2)#sym.times],
  [#num(cpu_64 / gpu_64, digits: 2)#sym.times],
  [#num(cpu_64 / gpu_32, digits: 2)#sym.times],
  table.hline(y: 2, start: 0, end: 5, stroke: if presentation { 2pt } else {
    1pt
  }),
)
