#let flo(term, color: red) = {
  text(color, [Flo: #term])
}

#let edu = text.with(fill: green)

= Introduction

When studying the composition of the Earth, researching ways of predicting earthquakes or vulcanic eruptions, predicting the location of mineral deposits or using ultrasound imaging for medical purposes, a common problem arises: the resolution of the wave equation. 
Depending on the informations we are interested in, the resolution can have as objective the simulation of the propagation of the given waves or the reconstruction of the medium they have propagated in.

Solving the frequency-domain equation for non trivial problems -- meaning ones with very large meshes, lots of frequencies or high polynomial orders -- requires the solution of a large scale linear system. Different approaches exist and are currently used when dealing with those, a recent approach, called @HDG, is implemented in the open-source software @HAWEN. Written in Fortran and distributed under the @GPL license, it and aims to provide a more scalable approach compared to traditional wave modeling programs.

The construction and factorization of the matrices that define the linear system is particularly expensive, especially in terms of memory consumption. Given that each simulation is run on an @HPC environment, researching ways to improve the efficiency of this task results in non-negligible energy savings and enables treating ever larger problems. Due to the embarrassingly parallel nature of the algorithms used in the software, taking advantage of @GPU:pl to accelerate part of the computations would be a good intuition. In this work we will explore different ways to accelerate the main bottlenecks in the software with a particular focus on @GPU computing, in particular with NVIDIA's CUDA development platform.

== Scientific Approach and Summary of Results

After first familiarizing ourselves with the technologies used in this library, we will tackle the optimization problem consisting in reducing the runtime of the software by first recognizing and isolating the most expensive routines in the code. Given that the solution of the wave equation can be used for different purposes, different benchmarks are used to cover most use cases. We will notice that different ones exhibit different behavior and are affected by different routines in the code.

Some of the changes include the reordering and simplification of loops to improve cache locality and the general replacement of the solving strategy for dense linear system of the form $A X = B$ from their $A^(-1)$ formulation to a direct solution using $L U$ factorization and optimized @LAPACK routines; these changes results in up to a $2 times$ improvement in the program runtime.

A @GPU accelerated solver for sparse linear system has been explored as alternative to the current one,  which does deliver at least a $3 times$ improvement on the execution time of the sparse solver routines in double precision. A C++ interface for a @GPU accelerated sparse solver developed recently by NVIDIA, cuDSS, is included in this work.

Finally, direct offloading of certain operations in @HAWEN on @GPU does seem to offer promising results, especially in single precision, with improvements in localized routines ranging for $6 times$ to $27 times$ when compared to our CPU baseline on the cluster. Our work in this area helped uncover some bugs in the compiler itself which were isolated and reported accordingly. Further work is required for a production ready solution.



== Contents of this Report

In @numerical-prop we will talk a bit more in depth about the wave equation and the discretization approach, namely the @HDG:long method, used by #cite(<x-HAWEN>, form: "author") to solve it in its software. In @tools-and-tech we will present the tools and technologies used in this work, we then discuss different parallelism approaches that are available in the Fortran world and different compilers relevant for our work. We focus in particular on NVIDIA's compilers for @HPC. We will also mention how different profilers can be useful to recognize and isolate bottlenecks in the code and other pieces of software such as libraries designed for solving large scale sparse linear problems. In @contributions-to-hawen we will detail the contributions that have been made to @HAWEN, these will include more general ones, such as work on the build system and better conformance to the standard, and more strictly performance-oriented work both on the @GPU side and more traditional @CPU:short\-only code. In @evaluation-of-changes the achieved results will be presented, covering both 2D and 3D use cases. Finally, in @conclusions we will talk about the future work and future approaches that can be applied to further enhance the software.