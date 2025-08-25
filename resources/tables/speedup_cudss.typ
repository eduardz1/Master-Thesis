#import "../graphs/cudss_v_mumps.typ": cudss_stats, mpi-configs, mumps_stats
#import "@preview/zero:0.4.0": num

#let speedup-cudss-table(presentation: false) = {
  set table(
    stroke: (_, y) => (
      top: if y == 0 { 1pt } else if y == 2 { none } else { 0pt },
      bottom: .5pt,
    ),
  )

  set table(inset: .5em) if presentation
  table(
    columns: 7,
    // align: left,
    align: (left, ..(right,) * 6),
    table.header([], table.cell(align: center, colspan: 6)[MUMPS baselines]),
    [], ..mpi-configs().map(strong).map(smallcaps),
    [#smallcaps[*Speedup*]],
    ..for c in mpi-configs() {
      (
        [
          #num(
            mumps_stats().at(c).total.avg / cudss_stats().total.avg,
            digits: 2,
          )#sym.times
        ],
      )
    },
    table.hline(y: 3, start: 0, end: 7, stroke: 1pt),
  )
}
