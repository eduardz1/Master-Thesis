= Summary of results, Conclusions, Expected Impact

This is a generic title. Replace it with an actual title that describes the context of the work.

Give a summary of the problem, approach, implementation, and evaluation. Discuss the principal results in abstract terms. Discuss expected impact and further research directions.

Explain how the project satisfies the evaluation criteria for a Masters Research project.

#let flo(term, color: red) = {
  text(color, box[FLO: #term])
}

== Future Works

Talk about different precision kinds, cite some of the work of MUMPS and XKBlas @x-XKBlas. In particular working with lower precision during the computation could be extremely beneficial without a loss in accuracy @x-OzakiII

Talk about potentially offloading all of matrix creation on GPU, it's not something that is possible right now because the code has too much branching but in theory it's embarrassingly parallel so it should be doable

Talk about reducing memory usage, currently HAWEN uses too much memory, I am sure it can be optimized. This is also key to using more the GPU, given that generally VRAM is more expensive than RAM. In general also exploring unified memory architectures could be the best of both worlds

Talk about making the GPU part truly asynchronous