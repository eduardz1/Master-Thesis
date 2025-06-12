= Problem Statement, Analysis, and State of the Art

This is a generic title. Replace it with an actual title that describes the context of the work.

Give a clear statement of the research problem, and the current scientific state of the art on this problem. Use the state of the art to analyze the problem. Use the analysis to develop a proposal for a possible solution to the problem (or multiple possible solutions).

// talk about how at first Hawen was only parallelized on CPU, big picture of the software and some perfomance

== Compilers

Being Fortran a very old language with no reference implementation, during the years, many compilers have emerged, in this section I will list some of the more relevant ones that I explored during my work on Hawen.

=== Nvfortran

NVIDIA's Fortran compiler, formerly known as PGI Fortran, is part of the NVIDIA HPC SDK, which includes also C and C++ compilers, libraries, and tools for high-performance computing. It officially supports Fortran 2003 but also includes a lot of features from later standards, in particular, for our work, we have focused on its excellent support of Fortran's standard parallelism features, in particular the `do concurrent` construct. Nvfortran supports out of the box locality specifiers, `local` and `shared`, and `reduce` annotations for concurrent loops.

=== GFortran <gfortran>

The GNU Fortran compiler is part of the GNU Compiler Collection (GCC) and is widely used in the open-source community. Support for recent Fortran standards is not complete but the performance and the diagnostic information's are excellent. GFortran doesn't support yet offloading to GPUs and only recently has included support for locality specifiers. Native reduction support is not yet available.

=== Flang
In particular about LLVM Flang and how it is the basis of the new WIP NVIDIA and ROCm compilers

Flang