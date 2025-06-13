#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge

= Theoretical Foundations for the Solution

This is a generic title. Replace it with an actual title that describes the context of the work.

Describe in abstract (theoretical) terms how the proposed approach can be implemented and how to solve related sub problems. Use the state of the art as an analysis tool.

// Maybe here I can talk about tools and technologies?
== HAWEN <hawen-chapter>

The @HAWEN software is a Fortran-based tool designed to simulate the propagation of waves in a given medium (what we will call from now on the _forward problem_) and reconstruct the physical properties of a non-directly accessible medium (the _inverse problem_) @x-HAWEN. It is a general purpose tool which can be used in fields such as medical imaging, geophysics, helioseismology, and more.

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

      node(
        (0, 3),
        [Optimization],
        width: 6cm,
        fill: blue.lighten(80%),
      )

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

@HAWEN is designed specifically with large scale problems in mind, leveraging a combination of MPI and OpenMP, it is currently deployed on supercomputers.

A characteristic of @HAWEN is the usage of the @HDG method for the discretization of the wave equation. This helps reduce the computational cost by producing smaller linear systems compared to other methods, such as the @FEM or @SEM. Compared to traditial @DG methods, @HDG reduces significantly the number of degrees of freedom, which allows for a substantial reduction in the computational cost and memory usage @x-HDG.

We can identify three computationally intensive steps in the @HAWEN pipeline:

- The *discretization* step, where the global matrix is built through @HDG from each cell of the mesh.

- The *solve* step, where the linear system is solve using a sparse solver, @MUMPS.

- The *save* step, where the results of the simulation are saved to disk.

My work focuses mostly on the first two steps. For the first step, I will focus on offloading part of the matrix creation to the GPU. For the second step, I will explore a new direct sparse solver by NVIDIA, cuDSS, and explore the new experimental GPU support in @MUMPS.
// talk about the structure of the code, the fact that he doesn't care about time but about the different frequencies, talk about fourier transforms. Draw a pipeline of the code with fletcher and highlight the section of the code we are focusing on.

=== Fortran

Fortran remains to this a very popular language for scientific computing, especially in the field of numerical simulations. It has become a staple in @HPC due to its performance and the extensive support for numerical libraries and tools. @x-ModernFortran

The flavor of Fortran used in @HAWEN is free-form Fortran, a successor to the old FORTRAN77 standard. During the years, the PL22.3 committee, colloquially known as the J3 committee, published several revisions to the standard, which extend the language with new features. In particular interest for my work, is the native support of parallelism primitives, such as the `do concurrent` construct and the `coarray` data type.

Compared to other languages such as C++, the standard are not fully supported in their entirety by all compilers so it doesn't make sense to talk about having as a target a specific revision. There will be therefore particular care given to the support of each feature by the different compilers.

==== The `do concurrent` construct

An extension of the `do` construct, known in other languages as a `for` loop, the `do concurrent` construct allows for the parallel execution of iterations of the loop.

As #cite(<x-ModernFortran>, form: "prose") and #cite(<x-FlangDC>, form: "prose") mention, the `do concurrent` construct only guarantees that each iteration of the loop can be executed independently, in arbitrary order. While we may expect that this implies parallel execution, this is not guaranteed by the standard and there are even instances where a standard-conforming `do concurrent` loop cannot be safely parallelized by the compiler. The Fortran 2018 standard introduces locality specifiers for the loop which mitigate but don't eliminate this problem. Furthermore, one of the most popular open source Fortran compilers, GFortran (@gfortran), only added support for locality specifiers in its latest release, `15.1`.

Inspired by the work of #cite(<x-DCvsDirectives>, form: "prose") and aware of these limitations, I have decided to focus on accelerating sections of the code on GPU using mostly standard Fortran constructs. In their work, they found that the `do concurrent` construct performs on par, if not better, than equivalent OpenMP (see @openmp) or OpenACC (see @openacc) directives.

#figure(
  kind: raw,
  grid(
    columns: 1,
    row-gutter: 1em,
    ```f
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

Focus on CUDA Fortran and mention the compiler bugs I found

=== MPI
==== Plafrim
=== OpenMP <openmp>
=== OpenACC <openacc>

== Profiling
=== NVIDIA Nsight
=== Tau

== Sparse Solvers
=== MUMPS
=== cuDSS
