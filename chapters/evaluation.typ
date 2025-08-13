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
#let stats(arr) = (
  "avg": avg(arr),
  "var": var(arr),
  "std": std(arr),
  "sem": sem(arr),
)

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
  data: json("../resources/benches/3d_acoustic_homogenous.json"),
  mesh: "mesh100k",
  solver: "default",
) = data.at(mesh).at(solver).keys()

#let runs(
  data: json("../resources/benches/3d_acoustic_homogenous.json"),
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
      height: 19.5cm,
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
              fill: lq.color.map.petroff10.at(branch_idx).transparentize(90%),
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

= Evaluation of the Performance Improvements in the Proposed Changes <evaluation-of-changes>

In this section we will analyze the difference in performance resulting from the proposed changes, in particular, in @quad-bench we will talk about some first analysis on the changes proposed in @computing-quad-int. In @inv-cache-bench we will explore the effects that removing matrix inversion and improving the cache locality have on an elastic 2D case, changes that where proposed in @red-mat-inv, @stiffness-matrix and @improv-cache-locality. In @cudss-vs-mumps we will compare two different sparse solvers to see if and how much could @GPU acceleration impact the solving times for the @HDG system.

For the experiments that only compare different @CPU only implementation, the compiler used will be @GCC `15.1.0`. For the ones that include both a @GPU and @CPU version we will use either @GCC `13.3.0` or NVHPC `24.7`. This difference is due to some incompatibilities with newer NVHPC versions on the PlaFRIM servers we are running the benchmarks on. All results are given as a mean of 10 runs. Where multiple configurations are compared against one another, we ensure that the same node is used for all the configurations for consistency.

#figure(
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
    [2 #math.times NVIDIA A100 (40GB)],
    table.hline(),
    table.hline(),
  ),
  caption: [Specifications of the servers used in the PlaFRIM cluster for the benchmarks],
)


== Quadrature Integrals First Benchmarks <quad-bench>

As previously mentioned in @computing-quad-int, the @GPU code for the quadrature integrals is not yet ready for production so a synthetic benchmark was prepared. A summary of the configuration used can be seen in @config-bench, the size of the arrays used in this configuration are similar to the ones we find in real use cases but the values are generated randomly.

#figure(
  table(
    columns: 7,
    table.header(
      [Model Representation],
      [$N_e$],
      [$N_#[quad points]$],
      [$N_"dof"$],
      [$N_"face points"$],
      [$N_"orders"$],
    ),
    [Piecewise constant], [50000], [300], [150], [100], [6],
  ),
  caption: [Configuration for the `hdg_build_quadrature` benchmarks. Here "Model Representation" is the representation that we use for the model (in our previous examples we used piecewise polynomials), $N_e$ is the number of cells, $N_"quad points"$ is the number of quadrature points used for the integrals, $N_"dof"$ is the number of degrees of freedom in a cell (note that this does not necessarily correspond to a real number obtained from the Lagrange polynomials) and $N_"orders"$ represents the number of different orders ($frak(p)$-adaptivity).],
) <config-bench>

#let cpu_64 = 68.575575138999994
#let cpu_32 = 42.075588857299998
#let gpu_64 = 11.11494379790000
#let gpu_32 = 2.521715399800000

The numbers are computed on an average of 10 runs for each configuration. The result is a #{ num(cpu_64 / gpu_64, digits: 2) }#sym.times speedup compared to the 32 core Zen 3 @CPU:short when using 64 bit floating points. Interestingly, compiling with 32 bit floats makes the time on @CPU:short decrease by #{ num(100 - (cpu_32 * 100) / cpu_64, digits: 2) }% and by #{ num(100 - (gpu_32 * 100) / gpu_64, digits: 2) }% for the @GPU FP32 version. The A100 @GPU that we're using for our benchmark has 9.7 TFLOPS of peak FP64 performance and 19.5 TFLOPS of FP32 yet we don't see just a #{ num(19.5 / 9.7, digits: 0) }#sym.times improvement but a #{ num(gpu_64 / gpu_32, digits: 1) }#sym.times one. This further proves how important choosing the correct precision is when writing @GPU code and suggest that approaches similar to the ones used @it-alg could be used in @HAWEN.

== Removing Matrix Inversions and Optimizing Cache Locality <inv-cache-bench>

#figure(
  placement: top,
  image("../resources/imgs/2D_Marmousi2_benchmark.svg"),
  caption: [2D elastic Marmousi2 model used as a benchmark (top image) with the computed wave field. The middle image represent the absolute displacement in meters of the elastic waves, the bottom the real part of the displacement.],
) <marmousi-img>

To benchmark the impact of the removal of matrix inversions and the changes related to better cache locality, we use the Marmousi2 @x-Marmousi2 model to simulate the propagation of elastic waves over a mesh of 100 thousands cells and compare the difference across a set of different polynomial orders. The Marmousi2 model covers a surface of 3.5 #sym.times 17 kilometers. This benchmark is generated with 169 sources (i.e. right-hand sides $cal(B)$ of the global linear system). In @marmousi-img we see the resulting wave field corresponding to the source number 111 at a frequency of 7Hz.

In @loop-order-bench we can see how the changes made in @acc-mat-creation greatly reduce the matrix creation time for the 2D elastic case. The two changes also perfectly add onto one another, given that they target two different sections of the matrix creation algorithm. In particular we notice that eliminating matrix inversions never results in worse runtime when compared to directly solving the systems, even for very small matrices, where we could expect the inversion to perform at least on par with the direct solving, due to its simpler nature.

Interestingly, we notice that the configuration `pI01`, which has degrees of freedom that vary throughout the mesh from 1 to 9, is the one that sees the greatest benefit from the changes. While replacing the matrix inversion with direct solving had only a small impact on the total runtime, optimizing the routines for better cache locality halved the matrix creation time. On the total runtime of the benchmark, this resulted in a `pI01` configuration which ends up faster than the original `p9` one. The loops responsible for the different orders are the ones in @reorder-loops. Rewriting these loops using optimized @BLAS dot products or as GEMM operation did not result in a performance improvement, suggesting that the computations are already done in the most optimal way and only an higher level of parallelism can help reduce the time.

#let configurations = ("p3", "p4", "p5", "p6", "p7", "p8", "p9")
#let sizes(config) = {
  $#json("../resources/benches/2d_elastic_marmousi.json").mesh100k.at("Remove inversions").at(config).matrix_AA^2$
}
#figure(
  table(
    columns: 8,
    table.header([], ..configurations),
    [*Size of matrix $AA_e$*], ..configurations.map(sizes),
  ),
  caption: [Size of the matrix $AA_e$ that we avoid inverting with the latest changes],
)

#figure(
  kind: image,
  anotinv_diagrams(mesh: "mesh100k", additional_plots: none),
  caption: [Comparison of matrix creation time for the 2D elastic benchmark with different configurations of the 100k mesh. The benchmarks where run with a configuration of 6 MPI processes and 8 OpenMP threads per process on the Suroit node. The $circle.small$ represents the outliers in the boxplot the boxes and whiskers represent the percentiles and the line in the middle the median.],
) <loop-order-bench>

== Using a GPU Accelerated Sparse Solver <cudss-vs-mumps>

#figure(
  placement: top,
  image("../resources/imgs/3D_homogeneous_benchmark.svg"),
  caption: [3D wave field results for a cube of 2 #sym.times 2 #sym.times 2 meters with homogenous wave speed and frequency of 2 mHz],
) <homogeneous-wavefield>

We now compare the two sparse solvers, cuDSS and @MUMPS (respectively, version `0.6.0` and `5.7.3`), using a cube of 2 #sym.times 2 #sym.times 2 meters with an homogenous acoustic plane wave. The resulting wave field can be seen in @homogeneous-wavefield. We will focus on a mesh comprised of 100 thousands cells and polynomials of order 3. In this benchmarks we are comparing a @CPU only implementation to a @GPU accelerated solver. @MUMPS does have an experimental @GPU accelerated version but due to various issues that would be out of scope here, it is not currently possible to have it work correctly in @HAWEN on the PlaFRIM cluster. It would be interesting in the future compare the two again, once it is officially released. The benchmarks where run in double precision float, testing in single precision would hinder the atomicity of this new added feature in the software and would require more investigation on the quality of the final results. Based on the results from @quad-bench, we can expect a significant improvement in working at lower precisions, but this is left for future works.

When using cuDSS, each @GPU is usually associated to a single @MPI process. Oversubscription with @MPI in the cuDSS version of the code requires more changes. While conceptually @MPI processes should be used to communicate between processors, with on-socket parallelism being better suited for thread primitives, like OpenMP, both @MUMPS and @HAWEN prioritized @MPI parallelism in their development from the start. These choices lead to programs that perform optimally when the balance of @MPI processes and OpenMP threads favors the first. In this benchmark we will test different configurations for the standard @CPU case but only the one for the @GPU case.

#figure(
  table(
    columns: 8,
    table.header([], ..mpi-configs()),
    [*Speedup*],
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
  ),
  caption: [Speedup of the cuDSS 1 MPI Process 32 OpenMP Threads configuration on the average sum of the sparse solver routines, compared to tested the configurations],
)

As we can see in @solver-times, the total time spent in sparse solver routines for the cuDSS configuration was just #{ num((cudss_stats().total.avg / mumps_stats().at("1P/32T").total.avg) * 100, digits: 2) }% of that spent with the @MUMPS solver. Nonetheless, we can notice that this is not the most efficient configuration for @MUMPS, comparing to the one with 8 MPI processes with 4 OpenMP Threads each we have a solver that takes just #{ num((cudss_stats().total.avg / mumps_stats().at("8P/4T").total.avg) * 100, digits: 2) }% of the time of @MUMPS. The results are still favorable toward the cuDSS solver.

Comparing the times with ones from a smaller benchmark with 48 thousand cells, the cuDSS times are #{ num((cudss_stats(mesh: "mesh048k").total.avg / mumps_stats(mesh: "mesh048k").at("1P/32T").total.avg) * 100, digits: 2) }% that of @MUMPS, which suggest that the @GPU solver scales better than the standard one, although further testing needs to be conducted before coming to any conclusions.

Curiously, the analysis step of cuDSS is measurably slower than that of @MUMPS, this could be due to a number of factors, NVIDIA's solver pulls ahead particularly in the factorization step, which in our use case coincides with the most expensive step of the sparse system resolution. The final solve step also benefits from @GPU acceleration but, being already very inexpensive before (accounting for only #{num(mumps_stats().at("1P/32T").analysis.avg * 100 / mumps_stats().at("1P/32T").total.avg, digits: 1)}% of runtime), this result is not particularly interesting for our problems. It could offer a significant benefit in simulations with more or denser right hand sides.

#figure(
  {
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

    lq.diagram(
      xlabel: [Time in seconds],
      margin: (right: 25%, rest: 6%),
      width: 12.3cm,
      height: 6.1cm,
      xaxis: (position: top, mirror: true),
      yaxis: (
        subticks: none,
        ticks: (rotate(-90deg)[MUMPS], rotate(-90deg)[cuDSS]).enumerate(),
      ),

      ..for (i, c) in mpi-configs().enumerate() {
        (
          lq.place(
            7,
            offsets.at(i + 1),
          )[#text(fill: white, weight: "black")[#c]],
        )
      },

      lq.place(
        7,
        1,
      )[*#text(fill: white)[#mpi-configs().at(0)]*],

      lq.hbar(
        label: [Analysis],
        fill: {
          let color = lq.color.map.petroff6.at(1).transparentize(30%)
          (
            color,
            color.transparentize(50%),
            color.transparentize(50%),
            color.transparentize(50%),
            color,
            color.transparentize(50%),
            color.transparentize(50%),
          )
        },
        (
          cudss_stats().analysis.avg,
          ..for c in mpi-configs() { (mumps_stats().at(c).analysis.avg,) },
        ),
        lq.vec.add((1, ..(0,) * mpi-configs().len()), offsets),
        width: (normal_width, ..(small_width,) * mpi-configs().len()),
      ),

      lq.hbar(
        label: [Factorization],
        fill: {
          let color = lq.color.map.petroff6.at(2).transparentize(30%)
          (
            color,
            color.transparentize(50%),
            color.transparentize(50%),
            color.transparentize(50%),
            color,
            color.transparentize(50%),
            color.transparentize(50%),
          )
        },
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
        fill: {
          let color = lq.color.map.petroff6.at(0).transparentize(30%)
          (
            color,
            color.transparentize(50%),
            color.transparentize(50%),
            color.transparentize(50%),
            color,
            color.transparentize(50%),
            color.transparentize(50%),
          )
        },
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
                fill: if c == "8P/4T" { black } else { gray },
                avg_with_err_mumps(conf: c),
              ),
            ),
          ),
        )
      },
    )
  },
  caption: [Comparison between cuDSS and MUMPS of time spent in sparse solver routines during the execution of the 3D benchmark on the Sirocco node with different MPI Processes (P) and OpenMP Threads (T) configurations. The cuDSS configuration was allocated 1 NVIDIA A100.],
) <solver-times>
