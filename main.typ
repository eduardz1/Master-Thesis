#import "@local/ensimag-nificent-thesis:0.1.0": load-bibliography, template
#import "abstract.typ": abstract-en, abstract-fr
#import "acknowledgements.typ": acknowledgements

#show: template.with(
  specialization: "Data Science and Artificial Intelligence",
  title: [Performance Analysis and CUDA Acceleration of the Open Source Software "HAWEN"],
  defense-date: datetime(year: 2025, month: 9, day: 1),
  name: "Eduard Antonovic Occhipinti",
  lab: "INRIA",
  supervisor: [Christophe Picard as _supervisor_ \ Florian Faucher as _expert_],
  jury: (
    president: "Sergi Pujades",
    members: ("<Jury Member 1>", "<Jury Member 2>", "<Jury Member 3>"),
  ),
  abstract: (en: abstract-en, fr: abstract-fr),
  acknowledgements: acknowledgements,
  bib-func: load-bibliography(read("works.yaml", encoding: none)),
  list-of-figures: true,
  list-of-listings: true,
  list-of-tables: true,
  glossary-entries: yaml("glossarium.yaml"),
)

#set math.mat(column-gap: 1em, delim: "[")
#set math.vec(delim: "[")

#include "chapters/introduction.typ"

#include "chapters/sota.typ"

#include "chapters/theory.typ"

#include "chapters/implementation.typ"

#include "chapters/evaluation.typ"

// #include "chapters/results.typ"

#include "chapters/conclusion.typ"
