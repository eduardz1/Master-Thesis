#import "@preview/fletcher:0.5.8" as fletcher: diagram, edge, node

= Theoretical Foundations for the Solution

This is a generic title. Replace it with an actual title that describes the context of the work.

Describe in abstract (theoretical) terms how the proposed approach can be implemented and how to solve related sub problems. Use the state of the art as an analysis tool.

// Maybe here I can talk about tools and technologies?
== HAWEN <hawen-chapter>

The @HAWEN software is a Fortran-based tool designed to simulate the propagation of waves in a given medium (what we will call from now on the _forward problem_) and reconstruct the physical properties of a non-directly accessible medium (the _inverse problem_) @x-HAWEN. It is a general purpose tool which can be used in fields such as medical imaging, geophysics, helio-seismology, and more.

The software achieves so by solving the wave equation in the frequency domain.

$
  - gradient 1/rho gradient u - omega^2/kappa u = f
$

#figure(
  diagram(
    spacing: (1cm, 0.5cm),
    node-corner-radius: 3pt,
    node-stroke: 0.5pt,
    {
      node((0, 0), [Measured data from acquisition])

      edge((0, 0), (0, 2), "->")

      node(
        (1, 0),
        [Initial models for the physical properties of the medium],
        width: 6cm,
      )

      edge("->")

      node(
        (1, 1),
        [Simulation of the wave propagation using the given properties of the medium],
        width: 6cm,
        fill: green.lighten(80%),
      )

      edge("d,l", "->")

      node(
        (0, 2),
        [Comparison between the observations and the simulations],
        width: 6cm,
        fill: blue.lighten(80%),
      )

      edge("->")

      node((0, 3), [Optimization], width: 6cm, fill: blue.lighten(80%))

      edge("->")

      node(
        (1, 3),
        [Update of the physical properties of the medium],
        width: 6cm,
        fill: blue.lighten(80%),
      )

      edge((1, 3), (1, 1), "->", [next iteration], shift: -10pt)
    },
  ),
  kind: image,
  caption: [Schematic representation of the HAWEN pipeline. In green it's highlighted the _forward problem_ and in blue the _inverse problem_. Note that one use case of the software is solving the _forward problem_ only.],
)

@HAWEN is designed specifically with large scale problems in mind, leveraging a combination of @MPI and OpenMP, it is currently deployed on supercomputers.

A characteristic of @HAWEN is the usage of the @HDG method for the discretization of the wave equation. This helps reduce the computational cost by producing smaller linear systems compared to other methods, such as the @FEM or @SEM. Compared to traditional @DG methods, @HDG reduces significantly the number of degrees of freedom, which allows for a substantial reduction in the computational cost and memory usage @x-HDG.

We can identify three computationally intensive steps in the @HAWEN pipeline:

- The *discretization* step, where the global matrix is built through @HDG from each cell of the mesh.

- The *solve* step, where the linear system is solved using a sparse solver, @MUMPS (see @mumps-section for more details).

- The *save* step, where the results of the simulation are saved to disk.

My work focuses mostly on the first two steps. For the first step, the focus will be on offloading part of the matrix creation to the @GPU. For the second step, it will be about exploring a new direct sparse solver by NVIDIA, cuDSS (see @cudss-section for more details), and explore the new experimental @GPU support in @MUMPS.
// talk about the structure of the code, the fact that he doesn't care about time but about the different frequencies, talk about fourier transforms. Draw a pipeline of the code with fletcher and highlight the section of the code we are focusing on.

=== Fortran

Fortran remains to this a very popular language for scientific computing, especially in the field of numerical simulations. It has become a staple in @HPC due to its performance and the extensive support for numerical libraries and tools. @x-ModernFortran

The flavor of Fortran used in @HAWEN is free-form Fortran, a successor to the old FORTRAN77 standard. During the years, the PL22.3 committee, colloquially known as the J3 committee, published several revisions to the standard, which extend the language with new features. In particular interest for my work, is the native support of parallelism primitives, such as the `do concurrent` construct and the `coarray` data type.

Compared to other languages such as C++, the standard are not fully supported in their entirety by all compilers so it doesn't make sense to talk about having as a target a specific revision. There will be therefore particular care given to the support of each feature by the different compilers.

==== The `do concurrent` construct

An extension of the `do` construct, known in other languages as a `for` loop, the `do concurrent` construct allows for the parallel execution of iterations of the loop.

As #cite(<x-ModernFortran>, form: "prose", supplement: "p.~138") and #cite(<x-FlangDC>, form: "prose") mention, the `do concurrent` construct only guarantees that each iteration of the loop can be executed independently, in arbitrary order. While we may expect that this implies parallel execution, this is not guaranteed by the standard and there are even instances where a standard-conforming `do concurrent` loop cannot be safely parallelized by the compiler. The Fortran 2018 standard introduces locality specifiers for the loop which mitigate but don't eliminate this problem. Furthermore, one of the most popular open source Fortran compilers, GFortran (@gfortran), only added support for locality specifiers in its latest release, `15.1`.

Inspired by the work of #cite(<x-DCvsDirectives>, form: "prose") and aware of these limitations, I have decided to focus on accelerating sections of the code on @GPU using mostly standard Fortran constructs. In their work, they found that the `do concurrent` construct performs on par, if not better, than equivalent OpenMP (see @openmp) or OpenACC (see @openacc) directives with the NVIDIA compiler and often performs on par with hand written CUDA kernels.

#figure(
  kind: raw,
  grid(
    columns: 1,
    row-gutter: 1em,
    ```f90
    !$omp parallel do collapse(2) default(shared)
    !$acc parallel loop collapse(2) default(present)
    do i=1, n
      do j=1, m
        a(i, j) = w * b(i, j)
      end do
    end do
    !$acc end parallel loop
    !$omp end parallel do
    ```,

    ```f
    do concurrent (i=1:n, j=1:m)
      a(i, j) = w * b(i, j)
    end do
    ```,
  ),
  caption: [Comparison of the `do concurrent` construct with OpenMP and OpenACC directives.],
)

==== Coarrays

// TODO: if possible, benchmark the differnce, pherhaps the perfomance has improved in the years

In @HPC a common paradigm is @SPMD, where computation can be distributed across multiple processes, often residing in multiple nodes. Although other standards exist, such as @NCCL, the de facto standard for distributed memory parallelism is @MPI.

Fortran Coarrays where introduced at first as extension to the Fortran standard in the Cray compiler and later standardized in Fortran 2008. They provide a native mean for @SPMD programming in Fortran. #cite(<x-MPIvsCoarrays>, form: "prose") compare the performance of Coarrays with @MPI and found consistent and significant lower performance compared to @MPI. For this reason, I have decided not to focus on Coarrays in my work.

== Parallelism Tools

=== CUDA

The CUDA Toolkit provides compilers, libraries and tools for developing applications that run on NVIDIA @GPU:short:pl. While writing cross-platform code is one of great interest to the team where I am working in, focusing on NVIDIA @GPU:short:pl was a good starting point.

=== MPI
==== Plafrim
=== OpenMP <openmp>
=== OpenACC <openacc>

== Profiling

Before starting writing code, it was important to understand the performance bottlenecks of the @HAWEN codebase. Some logging was already present, so we had an idea on where the time was spent, but the granularity of the logging was not sufficient to pinpoint the exact functions that were taking the most time. For this reason I started to explore different profiling tools for Fortran, some of the ones that I tried or where considered are:
// TODO: add link to a figure showing time spent in I/O
- `gprof`: a profiling tool that is part of the @GCC:long. Born as an evolution to the `prof` utility, it provides a simple, if limited, way of profiling programs compiled with the @GCC compilers (profiling is enabled with the `-pg` flag). Unlike other profilers, it is not capable of measuring time spent in kernel mode (syscalls, I/O, etc.) @x-Gprof, which is a limitation which would prevent us from identifying some of the bottlenecks in the @HAWEN codebase. It's simplicity makes it a good choice for quick benchmarks. Through the usage of the `GMON_OUT_PREFIX` environment variable, and the `-s` option, it is also possible to profile MPI programs effectively and sum the results across all processes.

- #link("https://github.com/RRZE-HPC/likwid")[`likwid`]: a powerful and easy to use profiling toolsuite. Unfortunately for Fortran, manual instrumentation is required, which is not ideal for a large codebase like @HAWEN, particularly before locating the heaviest functions.

- #link("https://www.cs.uoregon.edu/research/tau/home.php")[TAU Perfomance System] (see @tau): a portable profiling and tracing toolkit for performance analysis of parallel applications. It is a very powerful tool, which can be used to automatically instrument the code and provide detailed performance analysis.

- #link("https://developer.nvidia.com/nsight-systems")[NVIDIA Nsight Systems]: a performance analysis tool for applications running on NVIDIA @GPU:short:pl. It was particularly useful after I started to offload some of the code to the @GPU.

// === NVIDIA Nsight
=== TAU <tau>

On Linux, TAU needs to be compiled specifically with the options needed to instruct the application we're targeting. The way that automatic TAU instrumentation works, is by wrapping the Fortran compiler and preprocessing the source code with a specific Makefile. For example, for my use case, I used the `Makefile.tau-mpi-pdt-openmp` Makefile, which enables the instrumentation of @MPI and OpenMP calls, as well as the @PDT for source code analysis. For source code analysis, a new toolkit is being developed, based on @LLVM, called #link("https://github.com/ParaToolsInc/salt")[SALT]. I didn't have the opportunity to test it, because it would require working closer with the @LLVM Flang compiler (see @flang) and currently relies on minor patches to the @LLVM codebase, but it certainly seems like a promising replacement for @PDT.

#figure(
  image("../resources/imgs/paraview_summary.svg"),
  placement: bottom,
  caption: [ParaProf's summary view for a 2D elastic wave propagation simulation. In blue and red, is the time spent on the `hdg_build_quadrature_int_2D` routine, in yellow, the time spent on the `hdg_build_Ainv_2D`, the orange section corresponds to the time spent by LAPACK to inverse the matrix in the previous routine. The purple section is the overhead caused by the TAU instrumentation.],
) <paraprof-summary>

Once the data is collected, it can be visualized using the `paraprof` tool, which is part of the TAU suite. It provides a graphical interface to explore the profiling data, including function call graphs, time spent in each function, and more. It also supports 3D visualization of the profiling data, which can be useful for understanding the performance characteristics of the application.

In @paraprof-summary, we can see a visualization of a simulation for the 2D elastic case using a mesh of 100 thousand cells, polynomials of order 9 and executed on a single node with 2 #math.times 24 cores Zen4 CPUs. It was configured with 8 @MPI processes and 6 OpenMP threads per process. As we can see, in this case, the entirety of the time is spent on building the matrices for the @HDG method. In particular, the `hdg_build_quadrature_int_2D` routine, which is responsible for building the quadrature matrices for the 2D case, accounts for more than half of the program's runtime. The `hdg_build_Ainv_2D` routine, which is responsible for building the inverse of the matrix, accounts for a significant portion of the time as well. The graph might be a bit misleading in the sense that, for `hdg_build_Ainv_2D`, the time spent on @LAPACK:short to inverse the matrix should also be added to the time spent on the routine. As #cite(<x-DontInvertThatMatrix>, form: "prose") mentions, it's usually more computationally efficient to solve the linear system directly, rather than inverting the matrix. This is something that I will explore in more detail in @red-mat-inv. In @paraprof-summary we also noticed that 3 threads of each @MPI process are unused, meaning that greater parallelization can be achieved even on CPU.

#figure(
  image("../resources/imgs/paraprof_3D_visualization.png"),
  placement: bottom,
  caption: [ParaProf's 3D visualization of the profiling data for a 2D elastic wave propagation simulation. Highlighted is the `hdg_build_quadrature_int_2D` routine],
) <paraprof-3D-visualization>

In @paraprof-3D-visualization, we can see how, with ParaProf, it's easy to visualize the behavior of a parallel and distributed program over time, thanks to the 3D visualization capabilities. In @paraprof-function-table we can see the function table, which helps with interactively navigating the call graph, a very valuable feature for understanding the performance characteristics of unfamiliar code, whilst providing performance metrics such as number of calls and inclusive/exclusive time per call.

While the 2D elastic case was the one we were mostly focused on in the parallelization, each configurations differs greatly from one another. For 3D configurations, we noticed that initializing the Cartesian mapping in `dg_init_cartesian_map` was one of the slowest routines, depending on the mesh size, that could have more impact than the MUMPS factorization step. A peculiarity of the approach used by #cite(<x-HAWEN>, form: "author"), is that the factorization step for the sparse matrix is done only once but it order of magnitudes slower than the solving step. Other configurations, with varying polynomial orders, are bottlenecked by file I/O and would benefit from distributing the file I/O across the @MPI processes or the usage of distributed storage solutions.

#figure(
  image("../resources/imgs/paraprof_function_table.png"),
  placement: top,
  caption: [ParaProf's function table for a 2D elastic wave propagation simulation, sorted by inclusive time.],
) <paraprof-function-table>

== Sparse Solvers <sparse-solvers>

=== MUMPS <mumps-section>

MUMPSMUMPSMUMPSMUMPSMUMPSMUMPSMUMPSMUMPSMUMPSMUMPSMUMPSMUMPSMUMPSMUMPSMUMPSMUMPSMUMPSMUMPSMUMPSMUMPSMUMPSMUMPSMUMPSMUMPSMUMPSMUMPSMUMPSMUMPSMUMPSMUMPSMUMPSMUMPS @x-MUMPS

=== cuDSS <cudss-section>

cuDSS is a new library by NVIDIA for solving sparse linear systems on @GPU:short:pl. It is a direct replacement for the `cuSolverSp` and `cuSolverRf` components of the `cuSolver` library. It is a relatively new approach which is still in "preview" stage @x-cuDSSBlogPost @x-cuDSSDocs.
