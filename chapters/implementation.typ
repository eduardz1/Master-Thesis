= Practical Implementation

This is a generic title. Replace it with an actual title that describes the context of the work.

Give a concrete discussion of how the proposed solution was (or could be) implemented or evaluated.

// Talk about the fact that I'm trying to make it portable and use do concurrent instead of raw CUDA and compare the perfomance of different compilers
== Preliminary Work
// Talk a bit about the CMake contributions, testing, correct kinds. Talk a bit about the fact that I did this to familiarize myself with the codebase

To familiarize myself with the codebase, I started by tackling some of the problems in the codebase that were not directly related to the parallelization.

=== CMake Contributions

The build system was one of the first problems I tackled, @HAWEN provides two different build systems, one based on CMake and the other based on GNU Make, having the need to switch often between compilers, I focused on the CMake build system. I noticed that too many libraries were built and linked together, to mimic the GNU Make configuration. By taking advantage of CMake's automatic dependency management, I reduced it to only a single library, reducing the build time substantially and fixing a couple of bugs in the parallel build configuration that prevented the project from being built with Ninja, which I found a couple of seconds faster than GNU Make.

Another issue I noticed in @HAWEN was the dependency management. The project depends on a lot of heavy libraries, I added the option to download some of the key ones on-demand. This results in declarative dependency management, which enables us to pin the project to a specific version of a given dependency, something that was not possible before. It also allows us to build the dependencies in-tree and take advantage of link time optimizations across libraries. This also streamlines testing across different compilers, given that modules compiled with different compilers are not cross-compatible in Fortran, each Fortran dependency has to be re-compiled with the same compiler used to compile the main project.

Being my work perfomance focused, I also ensured a correct distinction between the debug and release builds, and encouraged the usage of one over the other through the definition of CMake presets and a development guide in the documentation.

=== Unit Testing

To ensure the correctness of the code I was writing, I introduced unit tests for each of the subroutines I was modifying or writing. Previously, @HAWEN lacked a proper testing framework and only had a couple of end to end tests. I first tried using #link("https://github.com/Goddard-Fortran-Ecosystem/pFUnit")[pFUnit], a very complete and powerful testing framework for Fortran originally developed by NASA and NGC TASC, but found some open issues that prevented me from using it. I also tested #link("https://github.com/fortuno-repos/fortuno")[Fortuno], a very well written testing framework, but found that some issues in using it with the NVIDIA compiler, in particular, some modern features such as recursive types with `allocatable` definition of the pointer to the type, were not supported. Even after reverting some of those to older style Fortran, a bug in the NVIDIA compiler prevented me from using it. I finally settled on #link("https://github.com/fortran-lang/test-drive")[test-drive], an extremely simple testing framework by the Fortran-lang community. While not very featureful, it was sufficient for my needs and the code is simple enough that making it work across different compilers was not a problem.

While `test-drive` does not provide any integrated benchmarking utilities, I wrote a small wrapper around it with `volatile` arguments (to avoid targeted optimizations by the compiler) to benchmark some of the routines I was testing, like the `hdg_build_quadrature_integrals` routines, in an isolated and repeatable way.

=== Using explicit precision kinds

I noticed that @HAWEN was using non-portable precision kinds, such as `real(8)` and `integer(4)`, which are not guaranteed to be the same across different compilers. Interpreting the first as a 64 bit IEEE 754 floating point number and the second as a 32 bit integer is not a given. In the floating point case, the Fortran standard is particularly interesting.

The Fortran standard defines some constant in the `intrinsic` `iso_fortran_env` module, such as `real64` and `int32`, these constants are guaranteed to be representations of, respectively 64 bit floating point numbers and 32 bit integers, across all compilers. The standard only requires that the `real64` constant is a 64 bit floating point number, but it does not require that it is represented as an IEEE 754 number. To ensure that, I had to use the intrinsic `ieee_select_real_kind` function (the related `select_real_kind` function, does not ensure IEEE 754 floats). This flexibility in Fortran makes it very easy to define custom floating point types, a feature that is used by the team at @MUMPS to decouple the precision of the matrix entries from the precision of the arithmetic operations.

Ensuring that the precision kinds used are the ones I expect was very important when comparing the performance of different compilers and was key in ensuring that the values being fed to the @GPU were the expected ones, being the @GPU very sensitive to the precision of the data it receives.

== Replacing the Sparse Solver

A first attempt at parallelizing part of the @HAWEN codebase on @GPU was by replacing the @MUMPS sparse solver (see @mumps-section) with the @GPU native cuDSS library (see @cudss-section). My implementation introduced a compile time option to switch between the two solvers. Being cuDSS written in C++, I had to write a Fortran wrapper around it and interface the two using the intrinsic C bindings of both Fortran, through the `iso_c_binding` `intrinsic` module, and C++ `extern "C"` declarations.

== Accelerating the Matrix Creation <acc-mat-creation>
