#import "@preview/algorithmic:1.0.3"
#import algorithmic: algorithm-figure
#import "@preview/lilaq:0.4.0" as lq
#import "@preview/physica:0.9.5": *

#let forward-acoustic-problem-alg(
  presentation: false,
  highlight-tensors: false,
) = [

  #let transparency = if highlight-tensors { 70% } else { 100% }

  #let hl-1(
    fill: lq.color.map.okabe-ito.at(0).transparentize(transparency),
    content,
  ) = box(
    content,
    outset: 0.25em,
    fill: fill,
  )

  #let hl-2 = hl-1.with(
    fill: lq.color.map.okabe-ito.at(1).transparentize(transparency),
  )
  #let hl-3 = hl-1.with(
    fill: lq.color.map.okabe-ito.at(2).transparentize(transparency),
  )

  #let ainv = if presentation { hl-1[$AA_e^(-1)$] } else { $AA_e^(-1)$ }

  #set grid(
    align: (right, left),
  )

  #algorithm-figure(
    if not presentation { "Forward Acoustic Problem" } else { none },
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
              CallInline[#if presentation {
                  hl-2[BuildTensors]
                } else [BuildTensors]][$K_e$, $omega$, $rho$, $bold(v)$, $f$],
            )
          })
          LineBreak
          LineComment(
            Assign(
              [$cal(A)$],
              [$sum_e cal(R)_e^TT (LL_e - BB_e #ainv CC_e) cal(R)_e$],
            ),
            if presentation [Build global matrix] else [Compute the global matrix],
          )
          LineComment(
            Assign[$cal(B)$][$-sum_e cal(R)_e^TT BB_e #ainv SS_e$],
            if presentation [Build RHS] else [Compute the forward right hand side],
          )
          LineComment(
            Assign([$Lambda$], CallInline[#if presentation {
                hl-3[Solve]
              } else [Solve]][$cal(A) Lambda = cal(B)$]),
            if presentation [Solve sparse linear system] else [Use a sparse solver for the global system],
          )
          LineBreak
          For($K_e in cal(T)$, {
            LineComment(
              Assign([$U_e$], [$#ainv (SS_e - CC_e cal(R)_e Lambda)$]),
              if presentation [Solve local systems] else [Solve the local systems],
            )
          })
        },
      )
    },
  ) <forward-problem>]
