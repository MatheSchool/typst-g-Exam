#import "mod.typ": *
#import "../../../src/question.typ"

#show: book-page.with(title: "Question")

// = Question

// #parse-show-module("../../src/question.typ") 

#let docs = tidy.parse-module(
  read("../../../src/question.typ"), 
  // name: "question", 
  scope: (question: question),
  
  preamble: "import g-exam: *;"
)

#tidy.show-module(docs,
   show-outline: false,
   sort-functions: "subquestion",
   style: tidy.styles.default)