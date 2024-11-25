#import "../../src/lib.typ": *

#show: exam.with(
  language: "es",
  show-grade-table: true,
  draft: true,
  localization: (
    grade-table-points: [*Puntitos*],
    grade-table-grade: [_Calificación_],
    family-name: [#text(blue)[Apellido]],
    given-name: [#text(red)[Nombre]],
    point: [#text(size:15pt)[*punto*]],
    points: [#text(size:15pt)[*puntos*]]
  )
)

#question(points:2)[Hello, how are you doing?]
#pagebreak()

Page 2
#pagebreak()

Page 3
#pagebreak()

Page 4
#pagebreak()

Page 5
#pagebreak()

Page 6
#pagebreak()

Page 7
#pagebreak()
