#import "@preview/lilaq:0.4.0" as lq
#import "@preview/zero:0.4.0": num, set-round

#set-round(mode: "uncertainty")

#let avg(arr) = arr.sum() / arr.len()
#let var(arr) = {
  let len = arr.len()
  let mean = arr.sum() / len
  arr.map(x => calc.pow(x - mean, 2)).sum() / (len - 1)
}
#let std(arr) = calc.sqrt(var(arr))
#let sem(arr) = std(arr) / calc.sqrt(arr.len())

#let treedi = json("../resources/benches/3d_acoustic_homogenous.json")

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

#let cudss_100k_p3 = treedi.mesh100k.cudss.p3.successful_runs
#let mumps_100k_p3 = treedi.mesh100k.default.p3.successful_runs
#let cudss_048k_p3 = treedi.mesh048k.cudss.p3.successful_runs
#let mumps_048k_p3 = treedi.mesh048k.default.p3.successful_runs

#let cudss_analysis = cudss_100k_p3.map(x => {
  x.analysis_time_seconds
})
#let cudss_factorization = cudss_100k_p3.map(x => {
  x.factorization_time_seconds
})
#let cudss_solve = cudss_100k_p3.map(x => {
  x.solve_time_seconds
})
#let mumps_analysis = mumps_100k_p3.map(x => {
  x.analysis_time_seconds
})
#let mumps_factorization = mumps_100k_p3.map(
  x => {
    x.factorization_time_seconds
  },
)
#let mumps_solve = mumps_100k_p3.map(x => {
  x.solve_time_seconds
})

#let cma = avg(cudss_analysis)
#let mma = avg(mumps_analysis)
#let cmf = avg(cudss_factorization)
#let mmf = avg(mumps_factorization)
#let cms = avg(cudss_solve)
#let mms = avg(mumps_solve)

#let sumc = total_solve_time(cudss_100k_p3)
#let summ = total_solve_time(mumps_100k_p3)

#let avg_with_err_cudss = num[#avg(sumc)+-#sem(sumc)]
#let avg_with_err_mumps = num[#avg(summ)+-#sem(summ)]

#let flo(term, color: red) = {
  text(color, box[Flo: #term])
}

#let anotinv_diagrams(
  mesh: "mesh100k",
  additional_plots: none,
  data: json("../resources/benches/2d_elastic_marmousi.json"),
) = for (
  mesh_name,
  mesh_data,
) in data {
  let branches = mesh_data.keys()
  let different_orders = mesh_data.at(branches.first()).keys().enumerate()

  if mesh_name == mesh {
    show: lq.set-label(pad: 1em)
    show lq.selector(lq.label): set align(top + right)

    lq.diagram(
      ylabel: [Time in seconds],
      width: 12.6cm,
      height: 20.5cm,
      ylim: (0, auto),
      legend: lq.legend(position: top + left, ..for (
        branch_idx,
        branch_name,
      ) in branches.enumerate() {
        (
          line(stroke: 1pt + lq.color.map.petroff10.at(branch_idx)),
          branch_name,
        )
      }),
      // title: mesh_name,
      xaxis: (ticks: different_orders, subticks: 0),
      ..for (p_order_idx, p_order) in mesh_data
        .at(branches.first())
        .keys()
        .enumerate() {
        for (branch_idx, branch_name) in branches.enumerate() {
          (
            lq.boxplot(
              x: p_order_idx,
              label: branch_name,
              stroke: lq.color.map.petroff10.at(branch_idx),
              median: lq.color.map.petroff10.at(branch_idx),
              outlier-stroke: lq.color.map.petroff10.at(branch_idx),
              mesh_data
                .at(branch_name)
                .at(p_order)
                .successful_runs
                .map(run => {
                  run.matrix_creation_time_seconds
                }),
            ),
          )
        }
      },
      ..additional_plots, // I want to zoom in on P9
    )
  }
}

// #let subplots(
//   mesh: "mesh100k",
//   data: json("../resources/benches/2d_elastic_marmousi.json"),
// ) = (
//   lq.rect(5.6, 50, width: 0.8, height: 60, stroke: 0.5pt),
//   lq.place(45%, 40%, lq.diagram(
//     width: 7cm,
//     height: 3cm,
//     yaxis: (
//       ticks: ("p9",).enumerate(),
//     ),
//     margin: 5%,
//     fill: white,
//     lq.hboxplot(
//       stroke: lq.color.map.petroff10.at(0),
//       median: 2pt + lq.color.map.petroff10.at(0),
//       outlier-stroke: lq.color.map.petroff10.at(0),
//       y: 0,
//       data
//         .at(mesh)
//         .at("anotinv")
//         .at("p9")
//         .successful_runs
//         .map(run => run.elapsed_time_seconds),
//     ),
//     lq.hboxplot(
//       stroke: lq.color.map.petroff10.at(1),
//       median: 2pt + lq.color.map.petroff10.at(1),
//       outlier-stroke: lq.color.map.petroff10.at(1),
//       y: 0,
//       data
//         .at(mesh)
//         .at("master")
//         .at("p9")
//         .successful_runs
//         .map(run => run.elapsed_time_seconds),
//     ),
//   )),
// )

= Experimental Performance Evaluation or validation of solution

This is a generic title. Replace it with an actual title that describes the context of the work.

Describe the performance metrics, experimental hypotheses, experimental conditions, test data, and expected results. Provide the test data. Interpret the results of the experiments. Pay special attention to cases where the experiments give no information or did not come out as expected. Draw lessons and conclusions from the experiments. Explain how additional experiments could validate or confirm results.

// Talk about data oriented design, explain the fact that first benchmarks that included memory transfers from CPU to GPU led to poor results. This is also the reason why cuDSS didn't perform well at the start, although in this case I don't think it's my fault, judging by the logs, but it is something intrinsic in the library. Show the outputs of compute-sanitizer

#figure(
  placement: top,
  table(
    columns: 4,
    inset: 1em,
    table.header([Name], [CPU], [Memory], [GPU]),
    [Suroit01-22],
    [2 #math.times 24 core AMD Zen4 Genoa EPYC 9224 \@ 2.5 GHz],
    [256 GB (5.3 GB/core) \@ 4800 MT/s],
    [/],
    [Sirocco22-25],
    [2 #math.times 32 core AMD Zen3 Milan EPYC 7513 \@ 2.6 GHz],
    [512GB (8GB/core) \@ 3200 MT/s],
    [2 NVIDIA A100 (40GB)],
    table.hline(),
    table.hline(),
  ),
  caption: [Specifications of the clusters used in the following benchmarks],
)

#figure(
  image("../resources/imgs/2D_Marmousi2_benchmark.svg"),
  caption: [2D elastic Marmousi2 model used as a benchmark (top image) with the computed wave field. The middle image represent the absolute displacement in meters of the elastic waves, the bottom the real part of the displacement.],
) <marmousi-img>

== Removing Matrix Inversions and Optimizing Cache Locality

To benchmark the impact of the removal of matrix inversions and the changes related to better cache locality, we use the Marmousi2 @x-Marmousi2 model to simulate the propagation of elastic waves over a mesh of 100 thousands cells and compare the difference across a set of different polynomial orders. The Marmousi2 model covers a surface of 3.5 #sym.times 17 kilometers. The results where computed over 169 sources. In @marmousi-img we see the resulting wave field corresponding to the source number 111.

In @loop-order-bench we can see how the changes made in @acc-mat-creation greatly reduce the matrix creation time for the 2D elastic case. The two changes also perfectly add onto one another, given that they target two different sections of the matrix creation algorithm. In particular we notice that eliminating matrix inversions never results in worse runtime when compared to directly solving the systems, even for very small matrices, where we could expect the inversion to perform at least on par with the direct solving, due to its simpler nature.

Interestingly, we notice that the configuration `pI01`, which has degrees of freedom that vary throughout the mesh from 1 to 9, is the one that sees the greatest benefit from the changes. While replacing the matrix inversion with direct solving had only a small impact on the total runtime, optimizing the routines for better cache locality halved the matrix creation time. On the total runtime of the benchmark, this resulted in a `pI01` configuration which ends up faster than the original `p9` one. The loops responsible for the different orders are the ones in @reorder-loops.

#figure(
  kind: image,
  anotinv_diagrams(mesh: "mesh100k", additional_plots: none),
  caption: [Comparison of matrix creation time for the 2D elastic benchmark with different configurations of the 100k mesh. The benchmarks where run with a configuration of 6 MPI processes and 8 OpenMP threads per process on the Suroit node.],
) <loop-order-bench>

== Using a GPU Accelerated Sparse Solver

We compare the two sparse solvers, cuDSS and @MUMPS, using a cube of 2 #sym.times 2 #sym.times 2 meters with an homogenous acoustic plane wave. The resulting wave field can be seen in @homogeneous-wavefield. We will focus on a mesh comprised of 100 thousands cells and polynomials of order 3.

As we can see in @solver-times, the total time spent in sparse solver routines for the cuDSS configuration was just #{ num((avg(sumc) / avg(summ)) * 100, digits: 2) }% of that spent with the @MUMPS solver. When compared to the smaller benchmark on the same model and polynomial order but with a mesh of 48 thousands cells, we observe a smaller speedup. The sum of the sparse solver routines for cuDSS was, in this case, #{ num((avg(total_solve_time(cudss_048k_p3)) / avg(total_solve_time(mumps_048k_p3))) * 100, digits: 2) }% of that of @MUMPS, suggesting that cuDSS scales better than @MUMPS.  We also notice that the analysis time with the @MUMPS solver is measurably faster than that of cuDSS, while the factorization and solve step benefit more from the @GPU acceleration.

To be clear, this is comparing a @CPU only implementation to a @GPU accelerated solver. @MUMPS does have an experimental and unreleased @GPU accelerated version but due to various issues that we won't dive into now, it is not currently possible to run it in the Plafrim cluster. It would be interesting, when officially released, to compare their implementation with NVIDIA's one.

#figure(
  {
    show: lq.set-legend(position: bottom)
    show: lq.set-label(pad: 1em)
    show lq.selector(lq.label): set align(top + right)

    lq.diagram(
      xlabel: [Time in seconds],
      margin: (right: 25%, rest: 6%),
      width: 12.3cm,
      height: 4cm,
      xaxis: (position: top, mirror: true),
      yaxis: (subticks: none, ticks: ([cuDSS], [MUMPS]).enumerate()),
      lq.hbar(
        label: [Analysis],
        fill: lq.color.map.petroff6.at(0).transparentize(30%),
        (cma, mma),
        (0, 1),
      ),
      lq.hbar(
        label: [Factorization],
        fill: lq.color.map.petroff6.at(1).transparentize(30%),
        (cma + cmf, mma + mmf),
        (0, 1),
        base: (cma, mma),
      ),
      lq.hbar(
        label: [Solve],
        fill: lq.color.map.petroff6.at(2).transparentize(30%),
        (cma + cmf + cms, mma + mmf + mms),
        (0, 1),
        base: (cma + cmf, mma + mmf),
      ),
      lq.place(
        cma + cmf + cms,
        0,
        pad(.5em, avg_with_err_cudss),
        align: left,
      ),
      lq.place(
        mma + mmf + mms,
        1,
        pad(.5em, avg_with_err_mumps),
        align: left,
      ),
    )
  },
  caption: [Comparison between cuDSS and MUMPS of time spent in sparse solver routines during the execution of the 3D benchmark on the Sirocco node with 1 MPI process and 32 OpenMP threads. The cuDSS configuration was allocated 1 NVIDIA A100.],
) <solver-times>

#figure(
  placement: top,
  image("../resources/imgs/3D_homogeneous_benchmark.svg"),
  caption: [3D wave field results for a cube of 2 #sym.times 2 #sym.times 2 meters with homogenous wave speed and frequency of 4 mHz],
) <homogeneous-wavefield>
