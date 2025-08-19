#import "@preview/lilaq:0.4.0" as lq
#import "@preview/zero:0.4.0": num, set-round
#import "../utils.typ": stats

// Sums the contributions for analysis, factorization and solve
#let total_solve_time(dict) = {
  dict.map(x => {
    (
      x.analysis_time_seconds
        + x.factorization_time_seconds
        + x.solve_time_seconds
    )
  })
}

#let mpi-configs(
  data: json("../benches/3d_acoustic_homogenous.json"),
  mesh: "mesh100k",
  solver: "default",
) = data.at(mesh).at(solver).keys()

#let runs(
  data: json("../benches/3d_acoustic_homogenous.json"),
  mesh: "mesh100k",
  solver: "default",
  mpi_config: "1P/32T",
  polynomial: "p3",
) = {
  data.at(mesh).at(solver).at(mpi_config).at(polynomial).successful_runs
}

#let cudss_stats(mesh: "mesh100k") = {
  let r = runs(mesh: mesh, solver: "cudss")
  (
    "analysis": stats(r.map(x => x.analysis_time_seconds)),
    "factorization": stats(r.map(x => x.factorization_time_seconds)),
    "solve": stats(r.map(x => x.solve_time_seconds)),
    "total": stats(total_solve_time(r)),
  )
}

#let mumps_stats(mesh: "mesh100k") = for c in mpi-configs() {
  let r = runs(mesh: mesh, mpi_config: c)
  (
    (c): (
      "analysis": stats(r.map(x => x.analysis_time_seconds)),
      "factorization": stats(r.map(x => x.factorization_time_seconds)),
      "solve": stats(r.map(x => x.solve_time_seconds)),
      "total": stats(total_solve_time(r)),
    ),
  )
}

#let avg_with_err_cudss = num[#cudss_stats().total.avg+-#cudss_stats().total.sem]
#let avg_with_err_mumps(
  conf: "1P/32T",
) = num[#mumps_stats().at(conf).total.avg+-#mumps_stats().at(conf).total.sem]

#let cudss-v-mumps(height: 6.1cm, width: 13.4cm, highlighted: true) = {
  set-round(mode: "uncertainty")
  show: lq.set-label(pad: 1em)
  show lq.selector(lq.label): set align(top + right)
  let small_width = 1.5 / mpi-configs().len()
  let normal_width = small_width
  let offsets = (
    0,
    small_width * 3 - small_width / 2,
    small_width * 2 - small_width / 2,
    small_width / 2,
    -small_width / 2,
    -small_width * 2 + small_width / 2,
    -small_width * 3 + small_width / 2,
  )

  let col-map(n) = {
    let color = lq.color.map.petroff6.at(n)
    if highlighted {
      (
        color.transparentize(30%),
        color.transparentize(80%),
        color.transparentize(80%),
        color.transparentize(80%),
        color.transparentize(30%),
        color.transparentize(80%),
        color.transparentize(80%),
      )
    } else { (color.transparentize(30%),) * 7 }
  }

  lq.diagram(
    xlabel: [Time in seconds],
    margin: (right: 25%, rest: 6%),
    width: width,
    height: height,
    xaxis: (position: top, mirror: true),
    yaxis: (
      subticks: none,
      ticks: ([MUMPS], [cuDSS])
        .map(rotate.with(-90deg, reflow: true))
        .enumerate(),
    ),

    ..for (i, c) in mpi-configs().enumerate() {
      (
        lq.place(
          align: right,
          10,
          offsets.at(i + 1),
        )[#text(fill: white, weight: "black")[#c]],
      )
    },

    lq.place(
      align: right,
      10,
      1,
    )[*#text(fill: white)[#mpi-configs().at(0)]*],

    lq.hbar(
      label: [Analysis],
      fill: col-map(1),
      (
        cudss_stats().analysis.avg,
        ..for c in mpi-configs() { (mumps_stats().at(c).analysis.avg,) },
      ),
      lq.vec.add((1, ..(0,) * mpi-configs().len()), offsets),
      width: (normal_width, ..(small_width,) * mpi-configs().len()),
    ),

    lq.hbar(
      label: [Factorization],
      fill: col-map(2),
      (
        cudss_stats().analysis.avg + cudss_stats().factorization.avg,
        ..for c in mpi-configs() {
          (
            mumps_stats().at(c).analysis.avg
              + mumps_stats().at(c).factorization.avg,
          )
        },
      ),
      base: (
        cudss_stats().analysis.avg,
        ..for c in mpi-configs() {
          (
            mumps_stats().at(c).analysis.avg,
          )
        },
      ),
      lq.vec.add((1, ..(0,) * mpi-configs().len()), offsets),
      width: (normal_width, ..(small_width,) * mpi-configs().len()),
    ),

    lq.hbar(
      label: [Solve],
      fill: col-map(0),
      (
        cudss_stats().total.avg,
        ..for c in mpi-configs() {
          (
            mumps_stats().at(c).total.avg,
          )
        },
      ),
      base: (
        cudss_stats().analysis.avg + cudss_stats().factorization.avg,
        ..for c in mpi-configs() {
          (
            mumps_stats().at(c).analysis.avg
              + mumps_stats().at(c).factorization.avg,
          )
        },
      ),
      lq.vec.add((1, ..(0,) * mpi-configs().len()), offsets),
      width: (normal_width, ..(small_width,) * mpi-configs().len()),
    ),

    lq.place(
      cudss_stats().total.avg,
      1,
      pad(.5em, avg_with_err_cudss),
      align: left,
    ),
    ..for (i, c) in mpi-configs().enumerate() {
      (
        lq.place(
          mumps_stats().at(c).total.avg,
          align: left,
          offsets.at(i + 1),
          pad(
            .5em,
            text(
              fill: if c == "8P/4T" or not highlighted { black } else { gray },
              avg_with_err_mumps(conf: c),
            ),
          ),
        ),
      )
    },
  )
}
