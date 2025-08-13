#let flo(term, color: red) = {
  text(color, box[FLO: #term])
}

= Conclusions <conclusions>

We have seen different approaches for the acceleration of the matrix creation and the resolution of the large scale linear system in @HAWEN. We have defined a good workflow for future performance oriented work and the first pillars necessary to introduce more @GPU offloading in the program have been planted. We expect this work to save time and resources in the near future and enhance the development experience of the researchers working on it. We also expect it to open the door for future more significant improvements to the runtime.

== Future Works

Taking advantage of Fortran's very thorough system for defining custom floating point numbers, it should be possible to optimize some operations that do not require a high precision. The work on precision is particularly important for @GPU computing, where current trends encourage the usage of the lowest possible precision for each application. #cite(<x-OzakiII>, form: "prose") introduce an interesting approach that could be extended to other applications that involves the computation of high precision float in lower precision (FP64 results by only using INT8 operations). This approach is particularly useful on @GPU but can also prove effective on @CPU:pl that support vector operations.

Given the reliance on @BLAS and @LAPACK operations for a good amount of the most computational intensive parts of the code, exploring platform agnostic ways of accelerating these operations with @GPU:pl would certainly prove very useful. For that purpose, #cite(<x-XKBlas>, form: "prose") developed a library called "XKBlas" which serves exactly this purpose. While integrating directly at the moment presents some blockers, it it something that could be done in the future.

Being the @HDG algorithm embarrassingly parallel, completely offloading it to @GPU should be possible, the code currently contains too much branching to make this approach viable but we can't exclude that rewriting it in a simpler and more efficient manner could enable this. The @GPU code present in @HAWEN does not currently take advantage of the asynchronous nature of accelerators, meaning that when @GPU code is executed, the @CPU always waits for its result. This is an area where we could certainly improve by further modularizing the different algorithms.

Finally, the program currently uses very large amounts of memory, limiting the scalability for larger use cases. An analysis on memory usage is something that will require a different approach and a different set of tools but will be necessary in the future.