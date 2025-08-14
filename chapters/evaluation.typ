#import "@preview/lilaq:0.4.0" as lq
#import "@preview/zero:0.4.0": num, set-round
#import "../resources/graphs/cudss_v_mumps.typ": (
  cudss-v-mumps, cudss_stats, mpi-configs, mumps_stats,
)
#import "../resources/graphs/anotinv_loop_order.typ": anotinv_diagrams
#import "@preview/algorithmic:1.0.3"
#import algorithmic: algorithm-figure

#set-round(mode: "uncertainty")

#let flo(term, color: red) = {
  text(color, box[Flo: #term])
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


== First Benchmarks with NVFortran <quad-bench>

As previously mentioned in @computing-quad-int, the @GPU code to accelerate the routines that build the matrices necessary for the @HDG linear system are not yet ready for production so evaluation was done using synthetic data. In particular we will analyze the routine responsible for building the values of matrix $AA_e$, here we found that computing $-angle.l sigma kappa^(-1) phi_i | phi_j angle.r_K_e$, $-angle.l sigma rho phi_i | phi_j angle.r_K_e$, and $angle.l partial_(bold(x)) phi_i | phi_j angle.r_K_e$  are especially expensive. The summary of the algorithm in pseudocode is presented in @hdg-build-quadrature-pseudo (note that the Fortran code includes more steps) where we use the quadrature rules (see @gauss-leg) to compute the inner products. Here we can see that, by isolating three explicit reductions, denoted by the symbol $plus.circle$, we can map them to an optimized parallel CUDA reduction automatically with NVIDIA's compiler. Furthermore, localizing the loop over all cells enables us to offload this entire computation to a CUDA kernel efficiently. A summary of the configuration used can be seen in @config-bench, the size of the arrays used in this configuration are similar to the ones we find in real use cases with the values generated randomly.

#figure(
  table(
    columns: 7,
    table.header(
      [Model Representation],
      [$N_e$],
      [$N_q$],
      [$N_"dof"$],
      [$N_(q tau)$],
      [$N_"orders"$],
    ),
    [Piecewise constant], [50000], [300], [150], [100], [6],
  ),
  caption: [Configuration for the `hdg_build_quadrature` routine. Here "Model Representation" is the representation that we use for the model (in our previous examples we used piecewise polynomials), $N_e$ is the number of cells, $N_q$ is the number of quadrature points used to approximate the integrals, $N_"dof"$ is the number of degrees of freedom in a cell (note that this does not necessarily correspond to a real number obtained from the Lagrange polynomials), $N_(q tau)$ is the number of quadrature points to approximate the face integrals, and $N_"orders"$ represents the number of different orders ($frak(p)$-adaptivity).],
) <config-bench>

#block(breakable: false)[
  #algorithm-figure(
    [Build Values for $AA_e$],
    vstroke: .5pt + luma(200),
    inset: .5em,
    {
      import algorithmic: *
      Procedure(
        "BuildVolumeIntegrals",
        ($cal(T)$, $sigma$, $rho$, $w$, $w'$),
        {
          Comment[The tensors $w$ and $w'$ represent the weights of the quadrature approximations for the integrals computed in the first and second loop]
          Comment[Being this loop more localized, it can be offloaded to the device]
          For([$K_e in cal(T)$ *in parallel*], {
            For($j in [1, N_"dof"^((e))], i in [1, N_"dof"^((e))]$, {
              LineComment(
                Assign(
                  [$- angle.l sigma rho phi_i | phi_j angle.r_K_e$],
                  [$plus.circle.big_(q = 1)^N_q w_(i j q) rho_(K_e q)$],
                ),
                [Reduce $plus.circle$ in parallel],
              )
              LineComment(
                Assign(
                  [$- angle.l sigma kappa^(-1) phi_i | phi_j angle.r_K_e$],
                  [$plus.circle.big_(q = 1)^N_q w_(i j q) kappa^(-1)_(K_e q)$],
                ),
                [Reduce $plus.circle$ in parallel],
              )
            })
            Comment[In 3D $bold(x) = {x, y, z}$]
            For(
              $d in bold(x), j in [1, N_"dof"^((e))], i in [1, N_"dof"^((e))]$,
              LineComment(
                Assign(
                  [$angle.l partial_d phi_i | phi_j angle.r_K_e$],
                  [$plus.circle.big_(q = 1)^N_q (w')_(i j q d) kappa^(-1)_(K_e q)$],
                ),
                [Reduce $plus.circle$ in parallel],
              ),
            )
          })
        },
      )
    },
  ) <hdg-build-quadrature-pseudo>]

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
  caption: [Size of the matrix $AA_e$ for the 2D acoustic test case that we avoid inverting with the latest changes],
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

Curiously, the analysis step of cuDSS is measurably slower than that of @MUMPS, this could be due to a number of factors, NVIDIA's solver pulls ahead particularly in the factorization step, which in our use case coincides with the most expensive step of the sparse system resolution. The final solve step also benefits from @GPU acceleration but, being already very inexpensive before (accounting for only #{ num(mumps_stats().at("1P/32T").analysis.avg * 100 / mumps_stats().at("1P/32T").total.avg, digits: 1) }% of runtime), this result is not particularly interesting for our problems. It could offer a significant benefit in simulations with more or denser right hand sides.

#figure(
  cudss-v-mumps(),
  caption: [Comparison between cuDSS and MUMPS of time spent in sparse solver routines during the execution of the 3D benchmark on the Sirocco node with different MPI Processes (P) and OpenMP Threads (T) configurations. The cuDSS configuration was allocated 1 NVIDIA A100.],
) <solver-times>
