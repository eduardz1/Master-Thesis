#import "@preview/touying:0.6.1": *
#import themes.dewdrop: *
#import "@preview/codly:1.3.0": *
#import "@preview/codly-languages:0.1.8": *
#import "@preview/numbly:0.1.0": numbly

#show: dewdrop-theme.with(
  aspect-ratio: "16-9",
  footer: self => self.info.institution,
  navigation: "mini-slides",
  alpha: 30%,
  config-common(preamble: {
    codly(
      languages: codly-languages,
      zebra-fill: none,
      lang-outset: (x: -5pt, y: 5pt),
      number-align: right + horizon,
      number-format: it => text(fill: luma(200), str(it)),
    )
  }),
  config-info(
    title: [TensorFlow Lite - based TinyML implementation in X-HEEP],
    subtitle: [Special Project per il corso di Architetture dei Sistemi di Elaborazione],
    author: [Eduard Antonovic Occhipinti],
    date: datetime.today(),
    institution: [Politecnico di Torino],
  ),
)

#title-slide()

= Introduction