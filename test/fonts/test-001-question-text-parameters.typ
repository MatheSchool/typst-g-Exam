#import "../../src/lib.typ": *

#show: exam.with(
  question-text-parameters: (font: "PT Sans", size: 18pt, spacing:200%),
)

#g-question(points: 2)[#lorem(30)]

#g-subquestion(points: 2)[#lorem(30)]

#g-subquestion(points: 2, points-position: right)[#lorem(30)]

#g-question(points: 1)[#lorem(30)]

#g-subquestion(points: 2)[#lorem(30)]
#g-subquestion(points: 2)[#lorem(30)]

#g-question(points: 2, points-position: right)[#lorem(30)]

#g-subquestion(points: 2, points-position: right)[#lorem(30)]
#g-subquestion(points: 2)[#lorem(30)]

#g-question(points: 1.5)[#lorem(30)]