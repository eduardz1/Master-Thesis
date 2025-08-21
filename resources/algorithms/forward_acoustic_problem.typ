#import "@preview/algorithmic:1.0.3"
#import algorithmic: algorithm-figure
#import "@preview/lilaq:0.4.0" as lq

#let hl-1(fill: lq.color.map.petroff6.at(0).transparentize(70%), content) = box(
  content,
  inset: 0.2em,
  fill: fill,
)

#let hl-2 = hl-1.with(fill: lq.color.map.petroff6.at(1).transparentize(70%))
#let hl-3 = hl-1.with(fill: lq.color.map.petroff6.at(2).transparentize(70%))

#let forward-acoustic-problem-alg(highlight-tensors: false) = [

  #let ainv = if highlight-tensors { hl-1[$AA_e^(-1)$] } else { $AA_e^(-1)$ }

  #algorithm-figure(
    "Forward Acoustic Problem",
    vstroke: .5pt + luma(200),
    inset: .5em,
    {
      import algorithmic: *
      Procedure(
        "ForwardAcousticProblem",
        ($omega$, $rho$, $bold(v)$, $f$),
        {
          For($K_e in cal(T)$, {
            Assign(
              [$#ainv, LL_e, BB_e, CC_e$],
              CallInline[#if highlight-tensors {
                  hl-2[BuildTensors]
                } else [BuildTensors]][$K_e$, $omega$, $rho$, $bold(v)$, $f$],
            )
          })
          LineBreak
          LineComment(
            Assign(
              [$cal(A)$],
              [$sum_e cal(R)_e^TT (LL_e - BB_e #ainv CC_e) RR_e$],
            ),
            [Compute the global matrix],
          )
          LineComment(
            Assign[$cal(B)$][$-sum_e cal(R)_e^TT BB_e #ainv SS_e$],
            [Compute the forward right hand side],
          )
          LineComment(
            Assign([$Lambda$], CallInline[#if highlight-tensors {
                hl-3[Solve]
              } else [Solve]][$cal(A) Lambda = cal(B)$]),
            [Use a sparse solver for the global system],
          )
          LineComment(
            Assign([$U_e$], [$#ainv (-CC_e cal(R) Lambda + SS_e)$]),
            [Solve the local systems],
          )
        },
      )
    },
  ) <forward-problem>]
