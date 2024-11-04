#import "mod.typ": *
#import "../../../src/exam.typ"

#show: book-page.with(title: "Exam")

#let docs = tidy.parse-module(
  read("../../../src/exam.typ"), 
  // name: "exam", 
  scope: (exam: exam),
  
  preamble: "import g-exam: *;"
)

#tidy.show-module(docs,
   show-outline: false,
  //  sort-functions: "exam",
   style: tidy.styles.default)