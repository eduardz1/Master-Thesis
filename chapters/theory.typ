#import "@preview/algorithmic:1.0.3"
#import algorithmic: algorithm-figure

#let flo(term, color: red) = {
  text(color, box[Flo: #term])
}

= Tools & Technologies Used <tools-and-tech>

In this section, we discuss the tools and libraries used as part of the works realized on @HAWEN to improve its performance. The code of the library is highly parallel by design, and in @par-tools we discuss the main parallelism tools that are relevant to our analysis. @HAWEN is mainly written in Fortran, so @fortran-sec will be dedicated as a brief introduction to the language and in particular the native support for parallelism primitives that have been introduced in recent versions of the standard. Having no reference implementation, multiple compilers are currently actively used and developed for the language, in @compilers we briefly mention the ones most relevant to our work. As we saw in @forward-problem, the code solves a very sparse large-scale linear problem, a specialized solver is used for these kinds of problems, which would be unreasonably expensive for standard dense linear solvers, @sparse-solvers covers two of them that we chose to compare against one another. @profiling will give an overview at the current state of profiling for Fortran @MPI programs and the criteria used to choose a suitable one for this work. Finally, @clusters will serve as a general overview of the clusters used in this work to run the aforementioned benchmarks.

== Parallelism Tools <par-tools>

In recent years, the observation by #cite(<x-MooreLaw>, form: "prose"), which has since taken the title of "law" due to its accuracy and longevity, of the number of transistors doubling every two years in integrated circuits has been slowly proving less and less accurate. Many experts, such as NVIDIA's CEO Jensen Huang @x-JensenMooreLawDead, already consider Moore's Law to be a thing of the past. A recent trend in consumer electronics and in particular consumer grade @CPU:short:pl is the ever increasing number of cores on a single socket. While _horizontal scaling_ #footnote[The process of increasing the computational resources by increasing the number of server nodes.], typical in a server and @HPC environment has been already wide spread for decades, _vertical scaling_ #footnote[The process of increasing the capabilities of a single system by using newer/more powerful processor, more/newer/faster RAM, etc.] has only recently focused on core count due to the ever increasing difficulty of reducing the feature size and increasing the frequency of each core. Nonetheless, work in the integration of vertical and horizontal scaling has been ongoing for decades @x-EarlyMPIOpenMP and concerns from #cite(<x-LessEarlyMPIOpenMP>, form: "prose") about thermal limitations of multi-core processor are nowadays mostly resolved.

More recently, extending similar paradigms to specialized accelerators has gained more traction, as detailed in the work of #cite(<x-RecentMPIOpenMPGPU>, form: "prose"). @GPU:pl have established themselves as an affordable architecture for parallel computing and in particular embarrassingly parallel tasks. While originally conceived for accelerating graphic tasks, they are now used for general computing tasks. Due in part to popularity, in part to more mature documentation, the work in this report will concern mostly the tools provided by the NVIDIA corporation.

=== CUDA

When developing code targeting NVIDIA @GPU:pl, the CUDA Toolkit provides compilers, libraries and tools for developing accelerated applications. These compilers enable the developer to write code that is either compiled with a traditional host compiler, like @GCC, for the specified architecture or compiled to an intermediate representation, similar to that of @LLVM, called @PTX. This approach enables each program to both include an optimized binary for a specific  @GPU architecture and at the same time take advantage of the @VM @ISA to @JIT compile the code for different architectures @x-PTX. The parallel model of the @GPU is abstracted as a set of parallel and independent _streaming multiprocessors_. Each multiprocessor is responsible for scheduling a large number of threads simultaneously.

Without going into too much details about the way the threads are scheduled and the memory is managed in a @GPU architecture, we can isolate some key take aways:

- The way threads are scheduled in _warps_ makes branching #footnote[What in code is represented as an `if-then-else` construct.] extremely costly when compared to standard @CPU:short architecture. Furthermore the absence of a sophisticated branch predictor #footnote[Branch predictors on the CPU architecture are digital circuits that are dedicated to predicting the outcome of an `if-then-else` construct. This takes part of the optimization technique known as _speculative execution_, where the processor executes some instructions speculatively to prevent delays in the instruction pipeline. In the case of branch prediction, this allows for the execution of what is the most probable outcome without the delay of the conditional check. When the guess proves incorrect the instruction are discarded in what is known as a _branch misprediction_.] accentuates this disadvantage.

- Memory bandwidth between the chip and memory is extremely important in @GPU algorithm design and keeping each core "fed" with data is one of, if not the most important parts of the design. The target should be "the highest occupancy".
- The @ISA of @GPU:pl, especially when compared to x86_64, is generally much smaller than conventional processor. Being aware of native operations is important when designing algorithms or writing _kernels_. One of these native operations is the _floating point multiply add_, sometimes abbreviated with FMA.
- In recent years @GPU:pl have been more and more optimized for Machine Learning tasks, where lower precision is acceptable (think for example of @LLM:pl inference). This results in more silicon dedicated on the die to these operations which are sometimes order of magnitude faster than ones at higher precision. Another thing to keep in mind regarding precision is that no support is planned for 128 bit floating point.

Writing cross-platform code is of great interest to the team and so it was prioritized over vendor-specific solution with CUDA code being explored only when vendor-specific solutions where already inherently required or where they result in significantly better performance.

=== MPI

The @MPI:long (@MPI:short) is a specification for parallel computation in distributed memory systems @x-MPITutorial. Various implementation of the standard exists for Fortran, C and C++ and programmers can interact with it as a library. It is fundamental to enable @CPU:short:pl to communicate across nodes in a cluster but also to communicate between each other in situations where a single cluster contains multiple @CPU:short:pl. One of the most commonly used implementations due to its open nature is OpenMPI @x-OpenMPI.

Compared to OpenMP, it is designed with distributed memory parallelism in mind. Where OpenMP uses threads for splitting the work, MPI spawns processes instead. Each thread has its own memory space and executes interdependently and the overhead of process creation, although greater than that of thread creation, occurs only once at initialization. In @example-mpi we can see how a simple MPI program is structured, the code in question initializes the @MPI context and then prints to `stdout` a test message with the rank of the process that is being executed and the total size of the cluster of processes. After the initialization, the subsequent code will be executed independently on each MPI process, communication between processes is then carried with operations such as reduction (`MPI_Reduce`) or broadcasting of messages.

#figure(
  kind: raw,
  placement: top,
  grid(
    row-gutter: 1em,
    columns: 1,
    ```f90
    program hello
        use mpi_f08
        implicit none

        type(MPI_Comm) :: comm_world
        integer :: process_rank, size_of_cluster

        call MPI_Init()

        comm_world = MPI_COMM_WORLD
        call MPI_Comm_size(comm_world, size_of_cluster)
        call MPI_Comm_rank(comm_world, process_rank)

        print *, 'Hello from process: ', process_rank, 'of ', size_of_cluster

        call MPI_Finalize()
    end program hello
    ```,
    ```shell
    ➜  ~ mpifort hello.f90 && mpirun -np 4 a.out
     Hello from process:            0 of            4
     Hello from process:            2 of            4
     Hello from process:            1 of            4
     Hello from process:            3 of            4
    ```,
  ),
  caption: [Example of a simple "Hello World" type MPI program and its output. The code has been executed with 4 processes (corresponding to the flag `-np 4`).],
) <example-mpi>

In the context of @HAWEN, the discretization mesh is initially split among the @MPI processes, leaving each process to work on their set of cells. The advantage of the @HDG method consists in the fact that each process can work completely independently from each other, without any communication between them. To partition the mesh we use the METIS partitioner, developed by #cite(<x-METIS>, form: "prose").

=== OpenMP <openmp>

OpenMP is a set of specification for compiler directives, library routines and environment variables that can be used to specify high-level parallelism in Fortran, C and C++ programs @x-OpenMP. It enables shared-memory parallelism in languages even with languages where the standard does not define any parallel construct (such as Fortran). It is used extensively in @HAWEN to take advantage of modern multi-core processors. In @directives-vs-dc we can see an example of how OpenMP can be used in a simple loop that scales an array by a certain weight $w$. We notice that in Fortran OpenMP directives are declared as comments (where in C++ you would use `#pragma` instead, in this example the two loops are collapsed to ensure maximum parallelism, the loop variables are implicitly private, meaning that each thread gets its own copy, while the others are implicitly shared, meaning that one copy is shared across all threads.

Later revisions of the standard have also enabled offloading #footnote[Offloading as in scheduling the execution of a specific section of code or routine on a different device (the @GPU) than the one the code is compiled for (the @CPU)] of parallel directives to @GPU:short:pl, although generally compiler support for this feature has to be enabled explicitly when building the compiler and, talking about @GCC:short, it is not a flag that is enabled by default in the packages provided by most Linux distributions.

=== OpenACC <openacc>

Similarly to OpenMP, OpenACC provides an @API for parallel computing through the use of compiler directives. In contrast to OpenMP, it has been designed with accelerators in mind from the start, being co-developed by Cray, CAPS, NVIDIA and PGI, and is therefore usually better suited for development in heterogeneous @GPU:short and @GPU:short systems @x-OpenACC.
The influence of NVIDIA on its standardization and their stance on open sourcing their software and drivers limited the diffusion of the standard when compared to OpenMP @x-OpenACCControversy.
Currently, @GCC:short supports OpenACC for device offloading but the performance of GCC is not up to par with NVFortran's implementation @x-DCvsDirectives.

== Fortran <fortran-sec>

Fortran remains a very popular language for scientific computing, especially in the field of numerical simulations. It has become a staple in @HPC due to its performance and the extensive support for numerical libraries and tools. @x-ModernFortran

The flavor of Fortran used in @HAWEN is free-form Fortran, a successor to the old FORTRAN77 standard. During the years, the PL22.3 committee, colloquially known as the J3 committee, published several revisions to the standard, which extend the language with new features. In particular interest for my work, is the native support of parallelism primitives, such as the `do concurrent` construct and the `coarray` data type.

Compared to other languages such as C++, the standard is not fully supported in their entirety by all compilers so it does not make sense to discuss having as a target a specific revision. There will be therefore particular care given to the support of each feature by the different compilers.

=== The `do concurrent` construct

An extension of the `do` construct, known in other languages as a `for` loop, the `do concurrent` construct allows for the parallel execution of iterations of the loop.

As #cite(<x-ModernFortran>, form: "prose", supplement: "p.~138") and #cite(<x-FlangDC>, form: "prose") mention, the `do concurrent` construct only guarantees that each iteration of the loop can be executed independently, in arbitrary order. While we may expect that this implies parallel execution, this is not guaranteed by the standard and there are even instances where a standard-conforming `do concurrent` loop cannot be safely parallelized by the compiler. The Fortran 2018 standard introduces locality specifiers for the loop which mitigate but do not eliminate this problem. Furthermore, one of the most popular open source Fortran compilers, GFortran (@gfortran), only added support for locality specifiers in its latest release, `15.1`.

Inspired by the work of #cite(<x-DCvsDirectives>, form: "prose") and aware of these limitations, I have decided to focus on accelerating sections of the code on @GPU using mostly standard Fortran constructs. In their work, they found that the `do concurrent` construct performs on par, if not better, than equivalent OpenMP (see @openmp) or OpenACC (see @openacc) directives with the NVIDIA compiler and often performs on par with hand written CUDA kernels.
In the NVIDIA compiler, `do concurrent`, when offloaded on @GPU:short, is translated implicitly to OpenACC.

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
) <directives-vs-dc>

=== Coarrays

// TODO: if possible, benchmark the differnce, pherhaps the perfomance has improved in the years

In the @HPC framework a common paradigm is @SPMD, where computation can be distributed across multiple processes, often residing in multiple nodes. Although other standards exist, such as @NCCL, the _de facto_ standard for distributed memory parallelism is @MPI.

Fortran Coarrays where introduced at first as extension to the Fortran standard in the Cray compiler and later standardized in Fortran 2008. They provide a native mean for @SPMD programming in Fortran. #cite(<x-MPIvsCoarrays>, form: "prose") compare the performance of Coarrays with @MPI and found consistent and significant lower performance compared to @MPI. For this reason, I have decided not to focus on Coarrays in this work.

== Compilers <compilers>

Being Fortran a very old language with no reference implementation, during the years, many compilers have emerged, in this section will be listed some of the more relevant ones explored during my work on @HAWEN:short.

=== NVIDIA Fortran Compiler <nvfortran>

NVIDIA's Fortran compiler, formerly known as PGI Fortran, is part of the NVIDIA @HPC @SDK, which includes also C and C++ compilers, libraries, and tools for high-performance computing. It officially supports Fortran 2003 but also includes a lot of features from later standards, in particular, for our work, we have focused on its excellent support of Fortran's standard parallelism features, in particular the `do concurrent` construct. `nvfortran` supports out of the box locality specifiers, `local` and `shared`, and `reduce` annotations for concurrent loops.

While the support is good for some features, it is still lacking in some areas. During this work, three compiler bugs were encountered and signaled, specifically:

- #link("https://forums.developer.nvidia.com/t/nvfortran-compiler-hangs-when-initializing-transposed-matrices/331820")[TPR \#37335] @x-TPR37335: a deadlock in the compiler during constants initialization
- #link("https://forums.developer.nvidia.com/t/memory-leak-when-compiling-with-stdpar/335016/9")[TPR \#37469] @x-TPR37469: a memory leak in the kernels generated by the compiler
- #link("https://forums.developer.nvidia.com/t/why-do-i-keep-getting-managed-attribute-mismatch-in-my-routine-calls/338526/4")[TPR \#37570] @x-TPR37570: a logic conflict between the `do concurrent` device offloading  and OpenMP.

From what can be gathered from the forums and comments from some of the developers at NVIDIA, the focus currently is on the #link(<flang>)[LLVM Flang] compiler. A new version of `nvfortran` based on Flang is in the works and will replace the current one once offloading to @GPU:short:pl is fully supported and the new compiler reaches feature parity with the current one.

=== GFortran <gfortran>

The GNU Fortran compiler is part of the @GCC:long and is widely used in the open-source community. Support for recent Fortran standards is not complete, but the performance and the diagnostic information are excellent. `gfortran` does not support yet offloading to @GPU:short:pl and only recently has included support for locality specifiers. Native reduction support is not yet available.

=== Intel Fortran Compiler <ifx>

Intel also provides a series of @HPC tools specifically designed for their @CPU:short:pl. Other than the Fortran compiler, Intel provides an implementation of @BLAS, MKL. A new version of the compiler, `ifx`, has been released recently, replacing the old `ifort` compiler. The new compiler is based on #link(<flang>)[LLVM Flang]. 


=== AMD Fortran Compiler <hipfort>

AMD also recently replaced their Fortran compiler with a new one based on #link(<flang>)[LLVM Flang], called `hipfort`. Being so new, the documentation is still very immature. It uses @LLVM Flang's OpenMP support to offload ROCm kernels to AMD @GPU:short:pl. This difference enables AMD to move their compiler to @LLVM before NVIDIA. The latter prefers and finds better performance in using OpenACC (see @openacc) to offload kernels to NVIDIA @GPU:short:pl.

=== LLVM Flang <flang>

The @LLVM Flang compiler was born as an open source alternative to the plethora of proprietary Fortran compilers. Although #link(<gfortran>)[GFortran] provides such an alternative, their usage of a @GPL license makes it impossible to use it in closed source software, such as the vendor specific ones from NVIDIA, Intel, and AMD @x-FlangHistory. The @LLVM Flang, on the other hand, is part of the @LLVM project and uses a more permissive @APACHE:long with @LLVM exceptions.

Curiously enough, the current `flang` is the third Fortran compiler that bears that name. In August 2011, Bill Wendling starts an @LLVM based Fortran compiler called "Flang". In August 2017 another @LLVM based Fortran compiler is announced, the development effort is led by NVIDIA's PGI division and the U.S. Department of Energy. In December of the same year, the previous "Flang" compiler is renamed to "Fort" to avoid confusion with the new one. In April 2018, Steve Scalpone from NVIDIA announces that the frontend of the new "Flang" compiler will be rewritten to address feedbacks from the @LLVM community, this new compiler was formerly known as "F18". In April 2020, the "F18" compiler was upstreamed to the @LLVM project mono-repo. In October 2024, after changing name to temporary ones multiple times, the new compiler officially adopts the name "Flang", with the binary being included in an @LLVM release for the first time in March 2025 @x-FlangHistory.

As we have already seen, this new compiler will probably end up becoming extremely relevant in the Fortran ecosystem. One of the main innovations in this new compiler is the usage of a new intermediate representation, based on @MLIR, a novel approach that aims to provide a declarative system for defining @IR dialects, a standardized way of defining @SSA and provide a wide range of common infrastructures such as documentation, multi-threaded compilation support etc. @x-MLIR. This new intermediate representation is known as @FIR:short.


== Sparse Solvers <sparse-solvers>

A lot of problems in science and technology can be represented efficiently as the solution of a linear system $A x = b$ where $A$ is sparse. Traditional solvers, such as @LAPACK or @BLAS, are not designed for sparse matrices and are thus usually not suitable for large scale problems due to the memory and computational requirements. By exploiting the fact that a majority of the entries in a matrix are zeros, a category of solvers, called _sparse solvers_, is capable of overcoming this limitation @x-AppleSparse @x-SparseIntro. We can see in @a-spy how @HAWEN is one such problem: the matrices generated by the @HDG method that we saw in @hdg-section are very sparse and thus result a large-scale linear system. We also notice that, even for small problems like the one shown in the figure, the dense representation of the matrix would be orders of magnitude larger due to the low density and inherent symmetry.

Sparse solvers, contrary to traditional _dense_ solvers, operate directly on a compressed representation of the matrix. Popular representations are the @COO and the @CSR with the first being generally easier (and therefore faster) to work with and the second being more memory efficient and optimal for direct operations on the data (i.e. slicing).

In the category of sparse solvers, two approaches stand out:

/ Direct methods: where the sparse matrix is first factorized and the solution is then computed directly. This approach generally works for every matrix without needing any preconditioning of the data. The memory requirement is still relatively high due to the storage requirement of the factors. The precision is defined by that of the machine. After a costly analysis and factorization phases, the actual solving is very inexpensive, making it suitable for multiple right-hand sides. This is the approach that is used in @HAWEN.

/ Iterative methods: generally faster for large problems and a single right-hand side, require problem-specific preconditioning of the data. The accuracy is limited to the square root of the machine precision. The memory requirement is much lower.

#figure(
  placement: top,
  image("../resources/imgs/A_spy_plot.svg"),
  caption: [Example of a small matrix generated by HDG in HAWEN. This matrix was generated with a mesh of 25 thousand cells and polynomial basis of order 1. Only the upper triangle is saved in the COO representation, given that the matrix is symmetric.],
) <a-spy>

=== MUMPS <mumps-section>

@MUMPS is a free and open-source direct sparse solver that offers a wide range of features, the innovation is led by research, with 13 PhD theses from its inception in Toulouse in 1996 @x-MUMPS. @MUMPS has become a staple in its field and is used worldwide by industrials and academics. @MUMPS offers great numerical robustness for the factorization even of ill-conditioned matrices, it is high performant (with native MPI and OpenMP integration) and is highly efficient in handling multiple right-hand sides.

Recent developments include mixed precision algorithms and a focus on GPU acceleration. Mixed precision algorithms have been around for a long time, an example from #cite(<x-IterativeRefinement>, form: "prose") can be seen in @it-alg. Here, the _factorization_ and _solve_ operations are performed in 32 bit, by repeating the solving step multiple times, the solutions is guaranteed to converge to the original one in 64 bit precision #footnote[When talking about floating point numbers, the IEEE 754 standard is implied. The same reasoning can and is already applied by the team of @MUMPS to other floating point formats.].

#algorithm-figure(
  "Iterative Refinement",
  vstroke: .5pt + luma(200),
  {
    import algorithmic: *
    Procedure(
      "IterativeRefinement",
      ($A$, $b$),
      {
        LineComment(
          Assign([$L U$], CallInline[Factorize#sub[FP32]][$A$]),
          [Factorization in FP32],
        )
        LineComment(
          Assign[$x_1$][$U^(-1) (L^(-1) b)$],
          [Solve $A x_1 = b$ in FP32],
        )
        LineBreak
        While([not converged], {
          LineComment(Assign[$r_i$][$b - A x_i$], [Operation in FP64])
          LineComment(
            Assign[$d_i$][$U^(-1) (L^(-1) r_i)$],
            [Solve $A d_i = r_i$ in FP32],
          )
          LineComment(Assign[$x_(i + 1)$][$x_i + d$], [Operation in FP64])
        })
      },
    )
  },
) <it-alg>

In recent years the popularity of machine learning and in particular @LLM:pl, has seen an ever larger focus by @GPU manufacturer in natively supporting low precision arithmetic at the architecture level. It is often the case that performing more operations in lower precision leads to better performance when compared to less operations in higher precision on @GPU. This partially applies also on @CPU:short when taking advantage of @SIMD vectorization.

=== cuDSS <cudss-section>

cuDSS is a new library by NVIDIA for solving sparse linear systems on @GPU:short:pl. It is a direct replacement for the `cuSolverSp` and `cuSolverRf` components of the `cuSolver` library. It supports single-@GPU, multi-@GPU and multi node configurations. cuDSS supports hybrid computation between CPU and GPU, it also exposes a memory prediction @API which simplifies the configuration of large systems. It is a relatively new approach which is still in "preview" stage but already supports a variety of algorithms for factorization and analysis @x-cuDSSBlogPost @x-cuDSSDocs.

We will explore this library in future sections, in particular in @replacing-mumps we will talk about the implementation of the solver as an alternative to the currently used one and in @cudss-vs-mumps we will evaluate the difference in performance between the two solvers.

== Profiling -- the TAU Performance System <profiling>

Before starting writing code, it was important to understand the performance bottlenecks of the @HAWEN codebase. Some logging was already present, so we had an idea on where the time was spent, but the granularity of the logging was not sufficient to pinpoint the exact functions that were taking the most time. For this reason I started to explore different profiling tools for Fortran, some of the ones that I tried or were considered are:
// TODO: add link to a figure showing time spent in I/O
/ `gprof` and `gprofng`: `gprof` @x-GProf is a profiling tool that is part of the @GCC:long @x-GCC. Born as an evolution to the `prof` utility, it provides a simple, if limited, way of profiling programs compiled with the @GCC compilers (profiling is enabled with the `-pg` flag). Unlike other profilers, it is not capable of measuring time spent in kernel mode (syscalls, I/O, etc.) @x-GprofGuide, which is a limitation which would prevent us from identifying some of the bottlenecks in the @HAWEN codebase. Its simplicity makes it a good choice for quick benchmarks. Through the usage of the `GMON_OUT_PREFIX` environment variable, and the `-s` option, it is also possible to profile MPI programs effectively and sum the results across all processes. In recent years, an evolution of the tool, called `gprofng` (`gprof` next generation), has been developed by the team behind the GNU Binutils @x-Binutils. It is designed from the ground up to target multi-threaded applications, a @GUI is provided and it doesn't require any special flags in the compilation. The source code analysis and the quick line by line analysis of the assembly, make it a particularly good profiler for our use case.

/ LIKWID: the main goals of this profiling suite is offering a low overhead but complete suite of command line tools for profiling multi threaded applications and, at the same time, reduce as much as possible the barrier of entry @x-LIKWID. Unfortunately, for Fortran, manual instrumentation is required, which is not ideal for a large codebase like @HAWEN, particularly before locating the heaviest functions.

/ TAU Performance System: a portable profiling and tracing toolkit for performance analysis of parallel applications. It is a very powerful tool, which supports automatic instrumentation of the code and provides detailed performance analysis. @x-TAU

/ NVIDIA Nsight Systems: a performance analysis tool for applications running on NVIDIA @GPU:short:pl @x-NVIDIANsightSystems. While supporting only profiling of code running on their systems, it is particularly useful for analyzing the call graph and the time allocated to each kernel. While more limited in scope, this analysis extends also to their closed source libraries. The suite offers CUDA API calls statistics, such as memory allocation and movement data, and automatic analysis and suggestions based on the results.

In the first benchmarks we used TAU as a platform to analyze the performance metrics of our program for different use cases. On Linux, TAU needs to be compiled specifically with the options needed to instruct the application we're targeting. The way that automatic TAU instrumentation works, is by wrapping the Fortran compiler and preprocessing the source code with a specific `Makefile`. For example, for my use case, I used the `Makefile.tau-mpi-pdt-openmp` `Makefile`, which enables the instrumentation of @MPI and OpenMP calls, as well as the @PDT for source code analysis. For source code analysis, a new toolkit is being developed, based on @LLVM, called SALT @x-SALT. I did not have the opportunity to test it, because it would require working closer with the @LLVM Flang compiler (see @flang) and currently relies on minor patches to the @LLVM codebase, but it certainly seems like a promising replacement for @PDT.

Once the data are collected, it can be visualized using the `paraprof` tool, which is part of the TAU suite. It provides a graphical interface to explore the profiling data, including function call graphs, time spent in each function, and more. It also supports 3D visualization of the profiling data, which can be useful for understanding the performance characteristics of the application.

In @paraprof-summary, we can see a visualization of a simulation for the 2D elastic case using a mesh of 100 thousand cells, polynomials of order 9 and executed on a single node with 2 #math.times 24 cores Zen4 @CPU:short:pl. It was configured with 8 @MPI processes and 6 OpenMP threads per process. As we can see, in this case, the entirety of the time is spent on building the matrices for the @HDG method. In particular, the `hdg_build_quadrature_int_2D` routine, which is responsible for building the quadrature matrices for the 2D case, accounts for more than half of the program's runtime. The `hdg_build_Ainv_2D` routine, which is responsible for building the inverse of the matrix, accounts for a significant portion of the time as well. The graph might be a bit misleading in the sense that, for `hdg_build_Ainv_2D`, the time spent on @LAPACK:short to inverse the matrix should also be added to the time spent on the routine. As #cite(<x-DontInvertThatMatrix>, form: "prose") mentions, it's usually more computationally efficient to solve the linear system directly, rather than inverting the matrix. Originally, the reasoning for computing the inverse was that it was reused in other computations later on in the program. This is something that I will explore in more detail in @red-mat-inv. In @paraprof-summary we also noticed that 3 threads of each @MPI process are unused, meaning that greater parallelization can be achieved even on CPU.

#figure(
  image("../resources/imgs/paraview_summary.svg"),
  placement: top,
  caption: [ParaProf's summary view for a 2D elastic wave propagation simulation, where each bar corresponds to a thread and represents the time spent in each routine of the benchmark. In blue and red, is the time spent on the `hdg_build_quadrature_int_2D` routine, in yellow, the time spent on the `hdg_build_Ainv_2D`, the orange section corresponds to the time spent by LAPACK to inverse the matrix in the previous routine. The purple section is the overhead caused by the TAU instrumentation.],
) <paraprof-summary>

#figure(
  image("../resources/imgs/paraprof_3D_visualization.png"),
  placement: top,
  caption: [ParaProf's 3D visualization of the profiling data for a 2D elastic wave propagation simulation. Highlighted is the `hdg_build_quadrature_int_2D` routine],
) <paraprof-3D-visualization>

#figure(
  image("../resources/imgs/paraprof_function_table.png"),
  placement: top,
  caption: [ParaProf's function table for a 2D elastic wave propagation simulation, sorted by inclusive time.],
) <paraprof-function-table>

In @paraprof-3D-visualization, we can see how, with ParaProf, it is easy to visualize the behavior of a parallel and distributed program over time, thanks to the 3D visualization capabilities. In @paraprof-function-table we can see the function table, which helps with interactively navigating the call graph, a very valuable feature for understanding the performance characteristics of unfamiliar code, whilst providing performance metrics such as number of calls and inclusive/exclusive time per call.

While the 2D elastic case was the one we were mostly focused on in the parallelization, each configurations differs greatly from one another. For 3D configurations, we noticed that initializing the Cartesian mapping in `dg_init_cartesian_map` was one of the slowest routines, depending on the mesh size, that could have more impact than the MUMPS factorization step. A peculiarity of using a direct solver instead of an iterative one, is that the factorization step for the sparse matrix is done only once before solving for many right-hand sides, but this operation is order of magnitudes slower than the solving step. Other configurations, with varying polynomial orders, are bottlenecked by file I/O and would benefit from distributing the file I/O across the @MPI processes or the usage of distributed storage solutions.

== Clusters Used in this Work <clusters>

Given that the target system for @HAWEN are clusters and supercomputers, executing the code in a system with comparable hardware was essential to accurately perform any analysis. Features such as multi-node compute and large memory footprint, using several hundreds of GB of system memory are difficult to emulate on a personal system. Furthermore, certain optimizations such as AVX512 vectorization are usually not supported on customer-grade @CPU:short:pl and not taking them into account may give a skewed perception of the behavior of the program.

/ PlaFRIM: is located in the city Bordeaux, France. It allows academic researchers, enterprises and students to use the platform. It is heterogenous, offering different nodes with different configuration, with nodes offering Intel @CPU:short:pl, AMD or even ARM based ones. It also offers nodes with NVIDIA, AMD and Intel @GPU:pl @x-PlaFRIM.

/ DOREMI CALI v3: is a cluster that is oriented towards @GPU computing. It is offered to the higher education and research community of the French region of Nouvelle-Aquitaine. It is also, like PlaFRIM, heterogenous in its configuration @x-CALI.