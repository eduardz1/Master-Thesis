#import "@preview/algorithmic:1.0.3"
#import algorithmic: algorithm-figure

#let build-volume-integrals(presentation: false) = algorithm-figure(
  [Build Values for $AA_e$],
  vstroke: .5pt + luma(200),
  inset: .5em,
  {
    import algorithmic: *
    Procedure(
      "BuildVolumeIntegrals",
      ($cal(T)$, $omega$, $rho$, $kappa$, $phi$, $w$, $w'$),
      {
        Comment[The arrays $w$ and $w'$ represent the weights of the quadrature approximations for the integrals computed in the first and second loop]
        Comment[The symbol $plus.circle$ indicates a parallel reduction]
        Comment[Being the loop over cells more localized, it can be offloaded on device, we take advantage of CUDA's _dynamic parallelism_ to launch nested kernels]
        For([$K_e in cal(T)$ *in parallel*], {
          For(
            [$j in [1, N_"dof"^((e))], i in [1, N_"dof"^((e))]$ *in parallel*],
            {
              Assign(
                [$- angle.l i omega rho phi_i | phi_j angle.r_K_e$],
                [$plus.circle.big_(q = 1)^N_q w_q phi_i (bold(x)_q) phi_j (bold(x)_q) rho (bold(x)_q)$],
              )
              Assign(
                [$- angle.l i omega kappa^(-1) phi_i | phi_j angle.r_K_e$],
                [$plus.circle.big_(q = 1)^N_q w_q phi_i (bold(x)_q) phi_j (bold(x)_q) kappa (bold(x)_q)^(-1)$],
              )
            },
          )
          // LineBreak
          // Comment[In 3D $bold(x) = {x, y, z}$]
          For(
            [$d in bold(x), j in [1, N_"dof"^((e))], i in [1, N_"dof"^((e))]$ *in parallel*],
            Assign(
              [$angle.l partial_d phi_i | phi_j angle.r_K_e$],
              [$plus.circle.big_(q = 1)^N_q w'_q partial_d phi_i (bold(x)_q) phi_j (bold(x)_q)$],
            ),
          )
        })
      },
    )
  },
)
