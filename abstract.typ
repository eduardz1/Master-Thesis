#import "@preview/wordometer:0.1.4": word-count

#let flo(term, color: red) = {
  text(color, [Flo: #term])
}

#let abstract-en = [
  In this report, we present the open source library HAWEN. The software is used to solve the wave problem in the frequency domain and can be used to both model the propagation of waves and solve the inverse problem. The inverse problem consists in the reconstruction of the characteristics of the media in which the waves propagated. We will discuss the approach used for the discretization of the wave equation, with a technique known as "Hybridizable Discontinuous Galerkin" discretization method. Dense matrix operations are the building blocks of this method, efficiency in these operations must be ensured.   This work will concern the approaches employed to improve the performance of the discretization step, with a focus on GPU acceleration.
  #flo[the abstract is not great, it is mostly about hawen and hdg and not about your work.] #text(fill: green)[but how much should I say in an abstract without overlapping with the Introduction?]
]

#let abstract-fr = [
  #set text(lang: "fr")
  Dans ce rapport, nous présentons la bibliothèque logicielle open source HAWEN. Le logiciel est utilisé pour résoudre le problème d'ondes dans le domaine fréquentiel et peut servir à la fois à modéliser la propagation des ondes et à résoudre le problème inverse. Ce dernier consiste à reconstruire les caractéristiques du milieu dans lequel les ondes se sont propagées. Nous détaillons son approche de discrétisation de l'équation des ondes, fondée sur une méthode dite "Hybridizable Discontinuous Galerkin". Les opérations sur des matrices denses constituent les éléments de base de cette méthode, et il est essentiel d'en assurer l'efficacité. Ce travail s'intéresse plus particulièrement aux techniques mises en œuvre pour optimiser les performances de l'étape de discrétisation, en mettant l'accent sur l'accélération par GPU.
]
