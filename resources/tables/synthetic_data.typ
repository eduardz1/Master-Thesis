#let synthetic-data-table(presentation: false) = table(
  columns: 7,
  align: (left, ..(right,) * 6),
  table.header(
    [Model Representation],
    [$N_e$],
    [$N_q$],
    [$N_"dof"$],
    [$N_(q tau)$],
    [$N_o$],
  ),
  [Piecewise constant], [50000], [300], [150], [100], [6],
  table.hline(y: 2, start: 0, end: 7, stroke: if presentation { 2pt } else {
    1pt
  }),
)
