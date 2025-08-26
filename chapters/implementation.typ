#import "@preview/physica:0.9.5": *
#import "@preview/codly:1.3.0": *
#import "@preview/lilaq:0.4.0" as lq

#let flo(term, color: red) = {
  text(color, [FLO: #term])
}


= Contributions to the HAWEN Software <contributions-to-hawen>

In this section we detail the practical contributions that are done as part of this work. Each contribution is mostly independent from each other and can be analyzed independently.

- Some preliminary work has been done to streamline the following contributions, these include changes to the build process, unit testing and others. This work is detailed in @preliminary-work.

- Using a @GPU accelerated sparse solver as an alternative to the current one might be an area of improvement. In @replacing-mumps we will present some of the challenges faced in doing so.

- As we have discussed, the construction of the matrix $cal(A)$ for the linear @HDG system is one of the most compute intensive sections of @HAWEN. @acc-mat-creation will cover various approaches for accelerating this process.

== Preliminary Work <preliminary-work>

Tackling some general problems in a codebase before starting with the core of the work is useful to acquire familiarity with said codebase. At the same time, some of the solutions presented in this section enable a more streamlined contribution process for other changes more directly related to the parallelization work.

=== CMake Contributions

The build system was one of the first problems that was tackled, @HAWEN provides two different build systems, one based on CMake @x-CMake and the other based on GNU Make @x-GNUMake, having the need to switch often between compilers and configurations, the main focus has been on the CMake build system. A first problem that can be noticed in the original CMake configuration was that too many libraries were built and linked together. This was done to mimic the GNU Make configuration. By taking advantage of CMake's automatic dependency management, one can notice that the whole library can reduce to only a single one, reducing the build time substantially and fixing a couple of bugs in the parallel build configuration that prevented the project from being built with the Ninja build system @x-Ninja, which itself is faster than the GNU Make one.

Another improvement that could be made in @HAWEN was in the dependency management. The project depends on some heavy libraries, an option to download some of the key ones on-demand was added to simplify usage of the software by newcomers and simplify configuration across different systems. This results in a declarative way of managing dependencies, which also enables us to pin the project to a specific version of a given dependency, something that was not possible before in an automatic fashion. Another advantage of this approach is the ability of building dependencies in-tree and therefore having the ability to take advantage of link-time optimizations, which allow for smaller binaries and sometimes significant performance improvements. Another advantage is the streamlining of testing across different compilers, given that modules compiled with different compilers are not cross-compatible in Fortran, each Fortran dependency has to be re-compiled with the same compiler used to compile the main project.

Being this work performance focused, a correct distinction between the `Debug` and `Release` builds, and encouragement of the usage of one over the other was ensured. This was done through the definition of CMake presets (in JSON format) and the addition of a development guide in the documentation.

=== Unit Testing

To ensure the correctness of the new code that was written, unit tests for each of the subroutines that were modified or written were introduced. Previously, @HAWEN lacked a proper testing framework and only had a couple of end to end tests. A first testing framework that was tested was pFUnit @x-pFUnit, a very complete and powerful library for Fortran originally developed by NASA and NGC TASC. Some open issues prevented us from using it in the software. Another framework that was tested was Fortuno @x-Fortuno, a very well written testing framework, but which unfortunately presented some issues when used with the NVIDIA compiler, in particular, some modern features such as recursive types with `allocatable` definition of the pointer to the type, were not supported. Even after reverting some of those to older style Fortran, a bug in the NVIDIA compiler prevented us from using it. Finally, we settled on `test-drive` @x-testdrive, an extremely simple testing framework by the Fortran-lang community. While not very feature-full, it was sufficient for our needs and the code is simple enough that making it work across different compilers was not a problem.

While `test-drive` does not provide any integrated benchmarking utilities, a small wrapper around it with `volatile` arguments (to avoid targeted optimizations by the compiler) was written to benchmark some of the routines we were testing, like the `hdg_build_quadrature_integrals` routines, in an isolated and repeatable way.

=== Using Explicit Precision Kinds <precision-kinds>

At the start of this work, it could be noticed that @HAWEN was using non-portable precision kinds, such as `real(8)` and `integer(4)`, which are not guaranteed to be the same across different compilers. Interpreting the first as a 64 bit IEEE 754 floating point number and the second as a 32 bit integer is not assured by the standard. In the floating point case, the Fortran standard is particularly interesting. The Fortran standard defines some constant in the `intrinsic` `iso_fortran_env` module, such as `real64` and `int32`, these constants are guaranteed to be representations of, respectively 64 bit floating point numbers and 32 bit integers, across all compilers. The standard only requires that the `real64` constant is a 64 bit floating point number, but it does not require that it is represented as an IEEE 754 number. To ensure that, the intrinsic `ieee_select_real_kind` function was used (the related `select_real_kind` function, does not ensure IEEE 754 floats). This flexibility in Fortran makes it very easy to define custom floating point types, a feature that is used by the team at @MUMPS to decouple the precision of the matrix entries from the precision of the arithmetic operations.

Ensuring that the precision kinds used are the ones we expect was very important when comparing the performance of different compilers and was key in ensuring that the values being fed to the @GPU were the expected ones, being @GPU:short:pl very sensitive to the precision of the data they receive and usually optimized for lower precision operations.

=== Making Use of C Bindings for Enumerators

Being the code very broad in scope, a lot of options are available for the user. In most cases, these options were handled as strings (or better, arrays of characters, given that Fortran doesn't have a string type). Operations such as `trim` and `adjustl` (respectively, to remove empty characters and to align a string to the left), are essential to guarantee the correctness of a switch case in Fortran that operates on arrays of characters. These operations, however, are incompatible with @GPU programming. Most of these options can be instead replaced by taking advantage of Fortran's C interoperability with the `enum` data structure @x-ModernFortran[p.~408].

The Fortran standard, unfortunately, introduced enumerator types only very recently @x-ModernFortran[p.~461] and is a feature that is still not supported by the major compilers, in part due to the lackluster standardization of the feature, which offers very little benefits compared to the aforementioned `enum, bind(C)` feature. The new enumerator type in Fortran is just defined again as a collection of integers instead of the more powerful sum types present in languages such as Haskell and Rust @x-LLVMFortran202X.

== Exploring Alternative Sparse Solvers <replacing-mumps>

A first attempt at parallelizing part of the @HAWEN codebase on @GPU was by adding the choice to use the @GPU#[-native] cuDSS library (see @cudss-section) instead of the @MUMPS sparse solver (see @mumps-section). The implementation introduced a compile time option to switch between the two solvers. Being cuDSS written in #box(block(breakable: false)[C++]), a Fortran wrapper was written around it to allow interfacing the two using the intrinsic C bindings of both Fortran, through the `iso_c_binding` `intrinsic` module, and C++ `extern "C"` declarations, as we see in @extern-c.

#[
  #show figure: set block(breakable: true)
  #figure(
    kind: raw,
    context {
      // workaround for https://github.com/Dherse/codly/issues/95
      set text(size: text.size / (.8 * .8))
      ```cuda
      extern "C" {
      void init_(const int rank, const bool symmetric, const bool analysis) {
        // ... Initialization (including mapping of MPI processes to GPU devices)

        // The communication libraries for MPI and OpenMP have to be built with the same
        // compiler as the rest of the code so we integrate this step in CMake

      #ifdef HAWEN_CUDSS_COMM_LIB_PATH
        cudssSetCommLayer(solver->cudss_handle, HAWEN_CUDSS_COMM_LIB_PATH);
      #endif

        // Set communicator to be used by Multi-GPU Multi-Node (MGMN) mode of cuDSS
        CUDA_ERROR_CHECK(cudssDataSet(solver->cudss_handle, solver->data,
                                      CUDSS_DATA_COMM, solver->mpi_comm,
                                      sizeof(MPI_Comm *)));

      #ifdef HAWEN_CUDSS_THREADING_LIB_PATH
        CUDA_ERROR_CHECK(cudssSetThreadingLayer(solver->cudss_handle,
                                                HAWEN_CUDSS_THREADING_LIB_PATH))
      #endif
      }

      // Solve interfaces
      void solve_int_complex_double_(const bool master, const int n, const int nrhs,
                               const int b_size, int *csr_offsets,
                               int *csr_cols, double _Complex *b,
                               double _Complex *x) {
        solve(master, n, std::span<int>(csr_offsets, nrhs + 1),
              std::span<int>(csr_cols, b_size),
              std::span<double _Complex>(b, b_size),
              std::span<double _Complex>(x, nrhs * n));
      }
      // ... for every combination of types (int/complex_float, long/complex_double, ...)

      // ... Analysis and Factorization C interfaces
      }
      ```
    },
    caption: [To interface with Fortran, we have to rely on C bindings from both Fortran and C++, we see that we cannot use C++'s @STL:short directly and instead have to declare the type explicitly. Ellipsis indicate omitted code.]
      + context {
        if not state("in-outline").get() { linebreak(justify: true) }
      },
  ) <extern-c>
]

A limitation of cuDSS, at the time of our work, is being able to operate only on dense right-hand sides, which is not ideal in cases such as the ones @HAWEN is set to target where we want to solve for multiple very sparse right hand sides, making a dense representation very costly. Another limitation is the fact that the only format supported for the sparse matrix are @CSR or dense. In HAWEN, for our test cases, the sparse matrix is stored in @COO format, unordered and with duplicates. The duplicate values are commonly reduced to a single value with a sum in most solvers.

Therefore, part of the C++ interface consisted in converting the data to a format that was suitable for NVIDIA's sparse solver. As a first preprocessing step, to sum the duplicate values and sort the indices, the algorithms used in the SciPy library @x-SciPy where taken as inspiration and modified for our needs. While their code is efficient, it is also strictly sequential, which will for sure be a bottleneck given the size of the matrices we are dealing with. #cite(<x-EfficientCOOtoCSR>, form: "prose") demonstrate a parallel and efficient algorithm to convert @COO matrices to @CSR. This could be interesting to explore in the future, but it is not necessary to compare just the factorization and solve steps. Alternatively, the matrix could be constructed directly in @CSR format with some modifications to the logic.

To convert the sparse @CSR right-hand sides to dense, we instead used the `cuSPARSE` library provided by NVIDIA, as we can see summarized in @csr-to-dense (here, `CUDA_ERROR_CHECK` is a macro that handles checks for errors of multiple CUDA libraries by checking the return type of the function at compile time and printing the corresponding error message if the function returns an error code). Performing the conversion directly on the @GPU reduces the amount of data movement from device to host.

#[
  #show figure: set block(breakable: true)
  #figure(
    // placement: top,
    kind: raw,
    context {
      // workaround for https://github.com/Dherse/codly/issues/95
      set text(size: text.size / (.8 * .8))
      ```cuda
      template <typename T, typename E, cusparseIndexBase_t index_base>
      void sparse_to_dense(cusparseHandle_t handle, const int n,
                           const std::span<T> csr_offset,
                           const std::span<T> csr_columns,
                           const std::span<E> csr_values, E **dense_out) {
          // ... Allocate and copy CSR data to device memory (cudaMalloc / cudaMemcpy)

          // ... Allocate dense output on device (cudaMalloc(dense_out))

          // Create cuSPARSE descriptors for CSR (sparse) and dense matrices, we use a
          // template struct to statically and at compile time (constexpr) assign the
          // correct index_type (CUDA_C_64F, ...) based on the typename T
          cusparseSpMatDescr_t A;
          cusparseDnMatDescr_t B;
          const auto index_type = CudaTypeTraits<T>::cusparse_type;

          CUDA_ERROR_CHECK(cusparseCreateCsr(
            &A, rows, n, nnz, csr_offset_d, csr_columns_d, csr_values_d, index_type,
            index_type, index_base, solver->data_type));

          CUDA_ERROR_CHECK(cusparseCreateDnMat(&B, rows, n, ld, *dense_out,
                                               solver->data_type, CUSPARSE_ORDER_ROW));

          // Query buffer size and allocate temporary buffer
          CUDA_ERROR_CHECK(cusparseSparseToDense_bufferSize(
            handle, A, B, CUSPARSE_SPARSETODENSE_ALG_DEFAULT, &buffer_size));
          CUDA_ERROR_CHECK(cudaMalloc(&buffer, buffer_size));

          // Convert on device from CSR to Dense
          CUDA_ERROR_CHECK(cusparseSparseToDense(
            handle, A, B, CUSPARSE_SPARSETODENSE_ALG_DEFAULT, buffer));

          // ... Cleanup (destroy descriptors, free buffers and temp memory)
      }
      ```
    },
    caption: [C++ code to convert a sparse @CSR:short matrix to a dense matrix using NVIDIA's cuSPARSE library. Ellipsis indicate code omissions.]
      + context {
        if not state("in-outline").get() { linebreak(justify: true) }
      },
  ) <csr-to-dense>
]

// An example of the sparse solver wrappers can be seen in @solver-cudss. Here, after the necessary conversions needed to use the arrays inside of the cuDSS library, we execute the solve phase. To interface with this function we cannot use the @STL directly but instead use explicit C types.

An example of the wrappers around the cuDSS library for the various phases of the sparse solver can be seen in @solver-cudss. Here we use `constexpr` operations to convert at compile time between C complex types and CUDA ones. The data, in @CSR format, is then normalized to remove duplicates and then converted to dense format, using the function we saw in @csr-to-dense. The correct handling of data is especially important, considering that the matrices are stored in column major format and one-based indexed in Fortran while C++ is row major and zero-indexed. Another possible issue that should be taken care of at this stage is correctly executing code such as the sparse to dense conversion or the final `cudaMemCpy` only on the master @MPI process while the cuDSS functions should, instead, be executed in parallel to fully take advantage of our Multiple-Node Multiple-@GPU configuration.

#[
  #show figure: set block(breakable: true)
  #figure(
    kind: raw,
    context {
      // workaround for https://github.com/Dherse/codly/issues/95
      set text(size: text.size / (.8 * .8))
      ```cuda
      template <typename T, typename E>
      void solve(const bool master, const int n, std::span<T> csr_offsets,
                 std::span<T> csr_columns, std::span<E> b, std::span<E> x) {
        // ... Guard clauses

        using val_type =
            std::conditional_t<std::is_same_v<E, float _Complex>, cuComplex,
                               std::conditional_t<std::is_same_v<E, double _Complex>,
                                                  cuDoubleComplex, E>>;

        const int nrhs = csr_offsets.size() - 1;
        const int nnz = csr_offsets[nrhs];

        cudssMatrix_t B, X;
        val_type *b_d = nullptr, *x_d = nullptr;

        // Only the main MPI process should start the Solve step, the work will be split
        // between the processes by the cuDSS library
        if (master) {
          CUDA_ERROR_CHECK(cudaMalloc(&b_d, x.size() * sizeof(val_type)));
          std::vector<T> csr_offsets_b_vec(csr_offsets.begin(), csr_offsets.end());
          std::vector<T> columns_b_vec(csr_columns.begin(), csr_columns.end());
          std::vector<val_type> b_copy(nnz);

          // ... Convert to 0 based ordering (remember Fortran is 1-indexed)

          // C -> CUDA complex types, which are not guaranteed to be byte compatible
          if constexpr (std::is_same_v<E, float _Complex>) {
            for (int i = 0; i < nnz; i++)
              b_copy[i] = to_cuComplex(b[i]);
          } else if constexpr (std::is_same_v<E, double _Complex>) {
            for (int i = 0; i < nnz; i++)
              b_copy[i] = to_cuDoubleComplex(b[i]);
          } else {
            std::copy(b.begin(), b.end(), b_copy.begin());
          }

          // ... Sum the duplicates in the CSR and validate it

          sparse_to_dense<T, val_type, CUSPARSE_INDEX_BASE_ZERO>(
              solver->cusparse_handle, n, std::span{csr_offsets_b_vec},
              std::span{columns_b_vec}, std::span{b_copy}, &b_d);

          CUDA_ERROR_CHECK(cudaMalloc(&x_d, x.size() * sizeof(val_type)));
        }

        CUDA_ERROR_CHECK(cudssMatrixCreateDn(&B, n, nrhs, n, b_d, solver->data_type,
                                             CUDSS_LAYOUT_COL_MAJOR));
        CUDA_ERROR_CHECK(cudssMatrixCreateDn(&X, n, nrhs, n, x_d, solver->data_type,
                                             CUDSS_LAYOUT_COL_MAJOR));
        CUDA_ERROR_CHECK(cudssExecute(solver->cudss_handle, CUDSS_PHASE_SOLVE,
                                      solver->config, solver->data, solver->A, X, B));

        if (master) {
          CUDA_ERROR_CHECK(cudaMemcpy(x.data(), x_d, x.size_bytes(), cudaMemcpyDeviceToHost));
        }

        // ... Cleanup (cudaFree / cudssMatrixDestroy)
      }
      ```
    },
    caption: [Example of wrapper around cuDSS's solve phase. Solving the system consists of three main phases: 1) analysis, 2) factorization, and 3) solve. Complex numbers in C++ can be declared using different conventions, the one we used is the one that is specified in the @GCC:short documentation for interoperability between Fortran and C. We can convert to CUDA complex types at compile type using `constexpr` code. Ellipsis indicate omitted code.]
      + context {
        if not state("in-outline").get() { linebreak(justify: true) }
      },
  ) <solver-cudss>
]

== Accelerating the Matrix Creation <acc-mat-creation>

When looking at offloading on device part of the computation of the matrix for the @HDG system, we have to keep in mind #cite(<x-Amdahl>, form: "prose")'s law. This observation states that the maximum theoretical speedup of an overall system is limited by the fraction of time that the improved section is actually used. It would be unwise, therefore, to focus on routines which are not particularly expensive, even when they offer perfect parallelism opportunities. A focused approach has been employed, with specific functions, such as the one responsible for computing the values of each matrix $AA_e$ (defined in @matrices-hdg), being analyzed in isolation.

Generating the sparse matrix that is fed to the sparse solver can be one of the most costly operations we can find in @HAWEN as seen in @paraprof-summary. As a reminder, the step for matrix creation that we saw in @hdg-section involve computing a series of dense matrices that are then assembled for the @HDG system. In this section we will explore some of the techniques used to accelerate it, in particular by replacing the matrix inversions with @red-mat-inv and @stiffness-matrix, improving cache locality of the code in @improv-cache-locality, and exploring a way to rewrite some parts of the computations in a way that is more friendly to @GPU offloading in @computing-quad-int.

=== Replacing the Inversion of Dense Matrices <red-mat-inv>

When looking at the profiles of the benchmarks (see @profiling), it can be noticed that a significant amount of time was spent in @LAPACK matrix inversion routines. As we saw in @forward-problem, the inverse of matrix $AA_e$ in the @HDG system is reused multiple times. Originally, the code computed the inverse of this matrix and stored the result for the following computations. Through some rearrangement, the systems can be rewritten in a standard linear system form, making it possible to use the standard form of $AA_e$ and the standard @LAPACK routines `*GETRF` @x-GETRF and `*GETRS` @x-GETRS for, respectively, computing the $L U$ factors of $AA_e$ and solving the linear systems with them. LU decomposition consists in the factorization of a square matrix $A$ in two factors, a lower triangular matrix $L$ and an upper triangular matrix $U$:

$
  A = mat(a_11, a_12, a_13; a_21, a_22, a_23; a_31, a_32, a_33) = L U = mat(1, 0, 0; l_21, 1, 0; l_31, l_32, 1) mat(u_11, u_12, u_13; 0, u_22, u_23; 0, 0, u_33).
$

More generally, when solving a linear system $A x = b$, calculating the inverse $A^(-1)$ to solve $x = A^(-1) b$ is always less efficient than using direct methods @x-DontInvertThatMatrix. Even when solving for multiple right-hand sides, it is more efficient to use the LU decomposition of the matrix $A$ and solve the system $L U x = b$ directly #footnote[Solving a linear system for $m$ right-hand sides $A X = B$ where $A$ has been factorized in the matrices $L$ and $U$ and has shape $n times n$ requires two steps: 1) forward substitution, which has complexity $cal(O)(n^2m)$ 2) backward substitution with same complexity $cal(O)(n^2m)$. Solving the same system with $A^(-1)$ also requires $cal(O)(2n^2m)$ operations.]. While both LU decomposition and matrix inversion are $cal(O)(n^3)$ operations, when analyzing the number of @FLOP:pl required, the latter comes out as three times more expensive than the former @x-WhyNotInvertMatrix @x-WhyLUbetterThanInverse.

Another disadvantage of the matrix inversion approach is that it is less numerically stable when the matrix $A$ is ill-conditioned. #cite(<x-AccuracyAndStability>, form: "prose", supplement: "Section 14.1") discusses the numerical stability in more detail, specifically, they argue that, comparing the best possible residual bound on the backward error, in the case $A^(-1)$ is computed with no rounding errors, of the two methods:

$
  |b - A x_"inv"| <= gamma_n |A| |A^(-1)| |b|,
$ <backward-error-inverse>
$
  |b - A x_"LU"| <= gamma_n |L| |U| |x_"LU"|.
$ <backward-error-lu>

Where $x_"LU"$ is the solution obtained by solving the LU decomposition of $A$ and $x_"inv"$ is the solution obtained by inverting $A$. With the assumption that the decomposition is accurate enough, the terms that dominate @backward-error-inverse are $|A^(-1)| |b|$, which can results in significantly worse backward error when $A$ is ill-conditioned, when compared to the dominant term in @backward-error-lu being $x_"LU"$.

This result can be proven empirically, although it has been argued that for well-conditioned matrices, the difference in precision is lower than one would expect @x-WhyNotInvertMatrix.


#heading(level: 3, context if state(
  "in-outline",
).get() [Stiffness Matrix for Elastic Wave Propagation] else [Treatment of the Stiffness Matrix for Elastic Wave Propagation ]) <stiffness-matrix>

In the context of elastic wave propagation, the software uses a formulation based on the compliance tensor $S$ represented by a matrix under Voigt notation, a method used to represent a symmetric tensor by reducing its order @x-Voigt. As is detailed by #cite(<x-HDGStabilize>, form: "prose"), the compliance tensor is represented in such a way that $S = V^(-1) C^(-1) V^(-1)$, where $C$ is the elastic stiffness tensor in Voigt notation and $V$ is the transformation matrix used to reformulate the system in Voigt notation. The dimension of $S$ depend on the dimension of the domain, in 2D, it can be represented in a $3 times 3$ matrix in Voigt notation, while in 3D, it can be represented as a $6 times 6$ matrix.

Under the consideration of visco-elasticity, $C$ and $S$ are complex-valued. Evaluating the complex-valued compliance tensor $S$ meant solving the system #box(block(breakable: false)[$S = V^(-1) C^(-1) V^(-1)$]), where the $C$ and $V$ matrices have the following structure, for the 2D and 3D isotropic cases:

#let zeros = $0$

$
  V_"2D" & = mat(
             1, zeros, zeros;
             zeros, 1, zeros;
             zeros, zeros, 2
           ), & C_"2D" & = mat(
                           lambda + 2 mu, lambda, zeros;
                           lambda, lambda + 2 mu, zeros;
                           zeros, zeros, mu
                         ), \
  V_"3D" & = mat(
             1, zeros, zeros, zeros, zeros, zeros;
             zeros, 1, zeros, zeros, zeros, zeros;
             zeros, zeros, 1, zeros, zeros, zeros;
             zeros, zeros, zeros, 2, zeros, zeros;
             zeros, zeros, zeros, zeros, 2, zeros;
             zeros, zeros, zeros, zeros, zeros, 2
           ), & C_"3D" & = mat(
                           lambda + 2 mu, lambda, lambda, zeros, zeros, zeros;
                           lambda, lambda + 2 mu, lambda, zeros, zeros, zeros;
                           lambda, lambda, lambda + 2 mu, zeros, zeros, zeros;
                           zeros, zeros, zeros, mu, zeros, zeros;
                           zeros, zeros, zeros, zeros, mu, zeros;
                           zeros, zeros, zeros, zeros, zeros, mu
                         ).
$

Given that we know the values already, we can replace the call to the @LAPACK inverse routine with an analytical solution of the systems, doing so also means that we can completely avoid the allocation of the $C$ and $V$ matrices.

We can identify both $C$ and $V$ as block diagonal matrices, calculating the inverse of $V$ becomes trivial, so we will focus on $C$, which can be inverted by isolating an upper left and bottom right block in the two cases:

#let dmat(..args) = math.mat(..args.named(), ..args
  .pos()
  .map(if type(args.pos().first()) != array {
    math.display
  } else {
    i => i.map(math.display)
  }))

#let ns = h(-1em)

#[
  #show math.equation: set block(breakable: true)
  $
    C_"2D"^(-1) & = dmat(
                    column-gap: #(-0.5em),
                    mat(
                      lambda + 2 mu, lambda;
                      lambda, lambda + 2 mu
                    )^(-1),
                    mat(delim: #none, zeros; zeros);
                    ns mat(delim: #none, column-gap: #3.5em, zeros, zeros), space space space mat(mu)^(-1)
                  ), \
    C_"3D"^(-1) & = dmat(
                    column-gap: #(-0.5em),
                    mat(
                      lambda + 2 mu, lambda, lambda;
                      lambda, lambda + 2 mu, lambda;
                      lambda, lambda, lambda + 2 mu
                    )^(-1),
                    mat(column-gap: #2.5em, delim: #none, zeros, zeros, zeros; zeros, zeros, zeros; zeros, zeros, zeros);
                    ns mat(column-gap: #3.5em, delim: #none, zeros, zeros, zeros; zeros, zeros, zeros; zeros, zeros, zeros),
                    space space space mat(column-gap: #2.5em, mu, zeros, zeros; zeros, mu, zeros; zeros, zeros, mu)^(-1)
                  ).
  $
]

For the 2D case, we can simply solve the upper left $2 times 2$ block by computing the determinant, while $mu$ just becomes $1 slash mu$

$
  C_("2D"_"upper left block")^(-1) = 1 / det mat(lambda + 2 mu, -lambda; -lambda, lambda + 2 mu) = 1 / (4 mu (lambda + mu)) mat(lambda + 2 mu, -lambda; -lambda, lambda + 2 mu),
$

so our matrix $S$ becomes

$
  S = mat((lambda + 2 mu)/(4 mu (lambda + mu)), -lambda/(4 mu (lambda + mu)), zeros; -lambda/(4 mu (lambda + mu)), (lambda + 2 mu)/(4 mu (lambda + mu)), zeros; zeros, zeros, 1 / (4 mu)).
$

The 3D case is a bit more complex, but we can still solve it analytically. The upper left $3 times 3$ block can be solved using the _Sherman-Morrison formula_ by rewriting it as

$
  C_("3D"_"upper left block") = mat(
    lambda + 2 mu, lambda, lambda;
    lambda, lambda + 2 mu, lambda;
    lambda, lambda, lambda + 2 mu
  ) = 2 mu I + lambda J,
$

where $I$ is the identity matrix and $J$ is the matrix with all entries equal to $1$. From the _Sherman-Morrison formula_ we know that:

$
  (A + u v^TT)^(-1) = A^(-1) - (A^(-1) u v^T A^(-1)) / (1 + v^T A^(-1) u).
$

Computing the inverse of $A = 2 mu I$ is trivial, and if we rewrite $J$ as $e e^TT$, with $u = e$ and $v = lambda e$, we get

$
  C_("3D"_"upper left block")^(-1) = mat(
    (lambda + mu)/(mu(2 mu + 3 lambda)), -lambda/(2 mu (2 mu + 3 lambda)), -lambda/(2 mu (2 mu + 3 lambda));
    -lambda/(2 mu (2 mu + 3 lambda)), (lambda + mu)/(mu(2 mu + 3 lambda)), -lambda/(2 mu (2 mu + 3 lambda));
    -lambda/(2 mu (2 mu + 3 lambda)), -lambda/(2 mu (2 mu + 3 lambda)), (lambda + mu)/(mu(2 mu + 3 lambda))
  ).
$

Our final matrix $S$ for the isotropic case becomes:

$
  S = mat(
    (lambda + mu)/(mu(2 mu + 3 lambda)), -lambda/(2 mu (2 mu + 3 lambda)), -lambda/(2 mu (2 mu + 3 lambda)), zeros, zeros, zeros;
    -lambda/(2 mu (2 mu + 3 lambda)), (lambda + mu)/(mu(2 mu + 3 lambda)), -lambda/(2 mu (2 mu + 3 lambda)), zeros, zeros, zeros;
    -lambda/(2 mu (2 mu + 3 lambda)), -lambda/(2 mu (2 mu + 3 lambda)), (lambda + mu)/(mu(2 mu + 3 lambda)), zeros, zeros, zeros;
    zeros, zeros, zeros, 1 / (4 mu), zeros, zeros;
    zeros, zeros, zeros, zeros, 1 / (4 mu), zeros;
    zeros, zeros, zeros, zeros, zeros, 1 / (4 mu)
  ).
$

In the anisotropic case, $C$ is full so finding the analytical expression for matrix $S$ is a bit more complicated. At the moment we only treat isotropic cases.

=== Improving Cache Locality and Fortran intrinsics <improv-cache-locality>

Being Fortran column major, in contrast to most other languages, such as C, it is important to ensure that the loops are arranged starting from the outermost dimension to the innermost dimension. This ensures that the data is accessed in a contiguous manner.

By simply reordering the loops and the matrices, a measurable performance improvement can be observed. A bigger impact is then achieved by recognizing patterns that can be rewritten as the Fortran-native `sum` and `dot_product` intrinsics. An example of this is shown in @reorder-loops. This, seemingly small, change not only improves readability, but also enables the compiler to take advantage of @SIMD vectorization more aggressively. From the assembly output of the function, we notice a roughly $approx 30%$ decrease in instruction count (which can be inferred from the line count of the assembly output after isolating the lines corresponding to this function), with, specifically, a decrease in equal measure of `MOV` and `ADD` type instructions, probably responsible for moving and loading data to and from memory. This kind of refactoring also helps to better recognize which lines of code are responsible for the most expensive operations, as can be seen in @reorder-loops.

#[
  #show figure: set block(breakable: true)
  #figure(
    placement: top,
    kind: raw,
    grid(
      columns: 1,
      row-gutter: 1em,
      ```f90
      do k = 1, ctx_dg%n_different_order
        n_dof_k = ctx_dg%n_dof_per_order(k)

        do l = 1, ctx_dg%n_different_order
          n_dof_l = ctx_dg%n_dof_per_order(l)
          face_phi_xi(k,l)%array = 0.d0
          face_phi_xi_nCntau(k,l)%array = 0.d0

          do i=1, n_dof_k
            do j=1, n_dof_l
              intface_Re = 0.d0
              intface_Cx = 0.d0
              do iquad=1,ctx_dg%quadGL_face_npts
                do iface=1,ctx_mesh%n_neigh_per_cell ! three triangle faces
                  intface_Re(iface) = intface_Re(iface) &
                    + ctx_dg%quadGL_face_phi_phi_w(k,l)%array(i,j,iquad,iface)
                  do kdim=1,ctx_mesh%dim_domain ! working in 2D
                    do jdim=1,ctx_mesh%dim_domain
                      intface_Cx(iface,kdim,jdim) = intface_Cx(iface,kdim,jdim) &
                        + face_coeff_Cx(iface,iquad,kdim,jdim) &
                        * ctx_dg%quadGL_face_phi_phi_w(k,l)%array(i,j,iquad,iface)
                    end do
                  end do
                end do
              end do

              face_phi_xi(k,l)%array(i,j,:)= intface_Re(:)
              do kdim=1,ctx_mesh%dim_domain
                do jdim=1,ctx_mesh%dim_domain
                  face_phi_xi_nCntau(k,l)%array(i,j,:,kdim,jdim) = intface_Cx(:,kdim,jdim)
                end do
              end do
            end do
          end do
        end do
      end do
      ```,
      {
        codly(highlights: (
          (
            line: 5,
            start: 3,
            fill: lq.color.map.okabe-ito.at(1).transparentize(40%),
            label: <sum-face-phi-xi>,
          ),
          // TODO: can be split on multiple lines if https://github.com/Dherse/codly/issues/96 is solved
          (
            line: 8,
            start: 5,
            fill: lq.color.map.okabe-ito.at(5).transparentize(40%),
            label: <dot-face-phi-xi-nCntau>,
          ),
        ))
        ```f90
        do concurrent(l=1:ctx_dg%n_different_order, k=1:ctx_dg%n_different_order)
          n_dof_k = ctx_dg%n_dof_per_order(k)
          n_dof_l = ctx_dg%n_dof_per_order(l)

          face_phi_xi(k,l)%array = sum(ctx_dg%quadGL_face_phi_phi_w(k,l)%array, dim=4)

          do concurrent(j=1:n_dof_l, i=1:n_dof_k, iface=1:3, jdim=1:2, kdim=1:2)
            face_phi_xi_nCntau(k,l)%array(kdim,jdim,iface,i,j) = dot_product(face_coeff_Cx(kdim,jdim,iface,:), ctx_dg%quadGL_face_phi_phi_w(k,l)%array(iface,i,j,:))
          end do
        end do
        ```
      },
    ),
    caption: [Reordering loops to improve cache locality and replacing sums and vector products with Fortran intrinsics. Highlighted in the bottom fragment of code are the two single most expensive operations in the program with, in particular, the `dot_product` accounting for more than 70% of the total program runtime.]
      + context {
        if not state("in-outline").get() { linebreak(justify: true) }
      },
  ) <reorder-loops>
]

In the refactored code, the highlighted lines, when looking at a 2D elastic simulation with variable degrees of freedom (configuration `p2-9` in @inv-cache-bench), account together for *73.22%* of the total program runtime. We can notice now that the first, `face_phi_xi`, matrix of matrices does not depend on the cell and can, therefore, be computed only once. Similar reasoning can be applied to some of the volume integrals. The final result is a code where the second operation on `face_phi_xi_nCntau` is now the single most expensive operation, accounting alone for *76.49%* of the runtime.


#heading(level: 3, context if state(
  "in-outline",
).get() [GPU Offloading with NVFortran] else [Compiling HAWEN with NVFortran and Taking Advantage of GPU Offloading]) <computing-quad-int>

The current creation matrix algorithm takes advantage of the embarrassingly parallel nature of @DG methods to split the work with @MPI and OpenMP. The mesh is first divided in sub-meshes for each @MPI process and then each thread is assigned a cell. In particular, this last loop is the one we see in @forward-problem. This characteristic might suggest that a solution could be to directly rewrite it as a @GPU kernel. While we cannot exclude that this intuition might end up being the best way to generate the matrix, currently as it stands, the code responsible for generating $cal(A)$ is too complex to result in an efficient kernel. A first attempt was made at that, but we noticed that the abundance of parameters resulted in excessive branching. Combined with the high amount of data movement, this results in abysmal performance.

A second attempt consisted in targeting only specific routines. In particular we start with the one responsible to generate the local matrices. The problem with the current code, that prevents us from simply using OpenACC to offload loops such as the ones we see in @reorder-loops, is that we generally work with meshes with a large number of cells. Calling thousands of kernels on @GPU means that we also multiply by thousands of times the overhead resulting from the kernel call and the one resulting from the back and forth copy of the data between host and device. It was clear then that what we had to do was extract these "hot" loops from the big one over the cells so that we could group the computation in a single kernel call (note that splitting the loop does not prevent us from parallelizing it with OpenMP threads on @CPU, so this change should not penalize systems with no available discrete @GPU). From the results in @hdg-section, we can also notice that some of the values do not need to be computed on a cell by cell basis. In the @HDG section we only look at a piecewise polynomial representation of the model parameters, but the changes had to be applied to other 5 possible representations as well.

Some of the miscellaneous changes required for writing code that could be compiled to @PTX instructions include, but are not limited to:

- Changing the logic behind error handling, considering that device kernels cannot exit a program or call @MPI routines for termination (`MPI_Abort`/`MPI_Finalize`).

- Use preprocessor directives to conditionally compile code with or without a @GPU target, something that can be seen in @host-device-array.

#figure(
  // placement: top,
  ```f90
  type, public :: t_array5d_complex_kindmat_h_d
  #ifdef _CUDA
      complex(RKIND_MAT), device, allocatable :: array(:,:,:,:,:)
  #else
      complex(RKIND_MAT), allocatable :: array(:,:,:,:,:)
  #endif
  end type t_array5d_complex_kindmat_h_d
  ```,
  caption: [Example of the wrapper around a 5D array of complex type of precision `RKIND_MAT` which, when compiled with NVFortran (which introduces the `_CUDA` definition), initializes the inner array as a _device_ allocated one.]
    + context {
      if not state("in-outline").get() { linebreak(justify: true) }
    },
) <host-device-array>

- Utilize `device` and `managed` attributes when appropriate to ensure correct behavior. The example in @host-device-array is not only necessary to create device arrays-of-arrays (a pattern that is very common in the codebase), but also for traditional host allocated arrays that we want to use on @GPU. Here, the NVIDIA compiler by default treats all variables as `managed` by default (though it can be changed, for example in platforms where unified memory is available). Managed memory is tracked automatically and moved from host to device on demand, depending on its usage in the code. For `allocatable` fields, like the ones we see in the example, this attribute is not propagated and we need to explicitly treat them as `device` arrays, meaning data explicitly allocated on the @GPU global memory.

- From the previous point follows that when such data structures are used throughout the codebase, we should ensure that we do not end up with too much data movement. When possible, these values should always be computed on @GPU and particular care has to be given to cases where @MPI operations are performed on the data (such as `MPI_Reduce`). In this case, fortunately the NVHPC Toolkit already bundles a CUDA-aware version of OpenMPI, but we need to treat also the accumulators as `device` arrays. Reducing data movement does not only imply a reduction of the number of data transfers but also on the size of them. Reducing the size of types to take advantage of better memory alignment and storing as little information as possible (for example avoiding storing the dimensions of a tensor when it can be inferred from the n-dimensional array's shape) have surprisingly large effects on the program. These principles are part of what is known as "Data Oriented Design", which are very well presented in the book of #cite(<x-DOD>, form: "prose").

- Recognizing and declaring as such `pure` routines. When writing CUDA kernels only `pure` routines can be compiled to `device` routines and therefore executed inside a kernel. Most non-trivial kernels require additional functions to be called. An example of that can be seen in @elemental-poly.

#[
  #show figure: set block(breakable: true)
  #figure(
    ```f90
    type t_polynomial
      integer :: dim_domain
      integer :: degree
    #ifdef _CUDA
      real(RKIND_POL), managed, allocatable :: coeff_pol(:)
    #else
      real(RKIND_POL), allocatable :: coeff_pol(:)
    #endif
    end type t_polynomial

    pure elemental subroutine polynomial_eval_3d(p, x0, y0, z0, val)
      !$acc routine
      implicit none

      type(t_polynomial), intent(in) :: p
      real(RKIND_POL), intent(in) :: x0, y0, z0
      real(RKIND_POL), intent(out) :: val

      integer :: I, K, L

      val = 0._RKIND_POL

      do I = 1, p%degree + 1
        do K = 1, I
          do L = 1, K
            val = val & ! we consider the ind1 element of F1
                + p%coeff_pol((I + 1) * I * (I - 1) / 6 + K * (K - 1) / 2 + L) &
                * x0**(I - K) &
                * y0**(K - L) &
                * z0**(L - 1)
          end do
        end do
      end do
    end subroutine polynomial_eval_3d
    ```,
    caption: [Example of functions to compute a polynomial for the 3D case, here error handling in the evaluation routine can be avoided and performed earlier in the program, giving us the opportunity to write the routines not only as `pure` but also `elemental`, meaning that it can operate in a transparent way over a collection of inputs. The `$acc routine` directive tells the compiler to generate both a `host` and `device` version of the routine, making it usable inside CUDA kernels.]
      + context {
        if not state("in-outline").get() { linebreak(justify: true) }
      },
  ) <elemental-poly>
]

- As an extension to @precision-kinds, we also need to extend the working precision to cover more cases, previously a lot of variables where declared explicitly as double precision, changing it to a working precision, like we see in @elemental-poly, -- where we use `RKIND_POL` to control at compile tme the precision of the `t_polynomial` type -- gives us greater control over the code.

- Handling normal Fortran code differently from code that contains CUDA Fortran (`cuf`) directives. A simple way is by using the `.cuf` extension, but that is not sufficient, one also needs to add the `-cuda` flag (and in our case `-stdpar` flag to offload `do concurrent` constructs) to the sources and add the same options to the linker. This can be seen in @cmake-cuf.

#figure(
  ```cmake
  if(HAWEN_USE_CUDA AND CMAKE_Fortran_COMPILER_ID STREQUAL "NVHPC")
      set(CUF_SOURCES)
      foreach(source ${HAWEN_PROJECT_SOURCES})
          if(source MATCHES "\\.cuf$")
              list(APPEND CUF_SOURCES ${source})
          endif()
      endforeach()
      if(CUF_SOURCES)
          set_source_files_properties(${CUF_SOURCES}
              PROPERTIES
              COMPILE_OPTIONS "-cuda;-stdpar=gpu"
          )
      endif()
  endif()
  target_link_options(
      hawen_lib
      PUBLIC $<$<BOOL:${HAWEN_USE_CUDA}>:-static-nvidia;-cuda>
  )
  ```,
  caption: [Handling of the CUDA library in @HAWEN:short's build system.]
    + context {
      if not state("in-outline").get() { linebreak(justify: true) }
    },
) <cmake-cuf>

- The work presented in @replacing-mumps due to NVFortran having issues compiling the @MUMPS codebase. As a reminder, Fortran modules are not cross-compatible across compilers so offloading the @HAWEN code with NVFortran meant compiling also the @MUMPS code with it. Currently this leads to a failure at runtime and in particular an OpenMP bug that was reported in the @LLVM project repository as issue #link("https://github.com/llvm/llvm-project/issues/148884")[\#148884] @x-148884.

The @GPU code will look like the one pictured in @building-c. This part required the most changes and is therefore not yet production ready. Although some of the routines are already tested with representative test-cases, a benchmark with synthetic data was prepared on the routine responsible for building the quadrature integral values for the sub-matrices.

#figure(
  placement: top,
  ```f90
  ...
  #ifdef __GFORTRAN__
    !$omp parallel do collapse(2)
    do n = 1, size(C, 3); do f = 1, N_FACES
  #else
    do concurrent (n = 1:size(C, 3), f = 1:N_FACES)
  #endif
      do concurrent (i = 1:ndof_vol_map(n), j = 1:ndof_face_neigh_map(n, f))
        do d = 1, DIMENSIONS
          C(i + (d - 1) * ndof_vol_map(n), ndf_edges_elem_map(n, f) + j, n) &
            = face_phii_xij(f, i, j) * normal(d, f, n) * pml_coeff(d, n)
        end do

        C(DIMENSIONS * ndof_vol_map(n) + i, ndf_edges_elem_map(n, f) + j, n) &
          = -penalization(n) * face_phii_xij(f, i, j)
      end do
    end do
  #ifdef __GFORTRAN__
    end do
    !$omp end parallel do
  #endif
  ...
  ```,
  caption: [Fragment of the build step for matrix $CC$, in this case we can see that the values don't depend on the cells directly and can be constructed in one shot outside the loop over all cells. We see that, by taking advantage of the preprocessor, we can have both a version parallelized on OpenMP threads and one that can be compiled to a CUDA kernel: the `do concurrent` construct is first translated to OpenACC directives and then translated to an attribute `global` function.]
    + context {
      if not state("in-outline").get() { linebreak(justify: true) }
    },
) <building-c>
