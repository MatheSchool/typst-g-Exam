#import "mod.typ": *

#show: book-page.with(title: "Introduction")

= Introduction

*g-exam* es una plantilla para typst, que nos permite crear examenes. You can create questions and sub-questions, header with information about the academic center, score box, subject, exam, header with student information, clarifications, solutions, watermark with information about the exam model and teacher.

== Features 

- Scoreboard.
- Scoring by questions and subquestions.
- Student information, on the first page or on all odd pages.
- Question and subcuestion.
- Show solutions and clarifications
- List of clarifications.
- Teacher's Watermark
- Exam Model Watermark

== A sample exam

#link("/exam-table-content.pdf?raw=true")[
#figure(
  image("./assets/exam-table-content.png", width: 80%),
  caption: [Exam - Table of content],
)
]

=== Source:

```typ
#import "@preview/g-exam:0.4.0": *

#show: exam.with(
  school: (
    name: "Sunrise Secondary School",
    logo: read("./logo.png", encoding: none),
  ),
  exam-info: (
    academic-period: "Academic year 2023/2024",
    academic-level: "1st Secondary Education",
    academic-subject: "Mathematics",
    number: "2nd Assessment 1st Exam",
    content: "Radicals and fractions",
    model: "Model A"
  ),
  
  show-student-data: "first-page",
  show-grade-table: true,
  clarifications: "Answer the questions in the spaces provided. If you run out of room for an answer, continue on the back of the page."
)
#question(points:2.5)[Is it true that $x^n + y^n = z^n$ if $(x,y,z)$ and $n$ are positive integers?. Explain.] 
#v(1fr)

#guestion(points:2.5)[Prove that the real part of all non-trivial zeros of the function $zeta(z) "is" 1/2$].
#v(1fr)

#question(points:2)[Compute $ integral_0^infinity (sin(x))/x $ ]
#v(1fr)
```




// *shiroa* (_Shiro A_, or _The White_, or _云笺_) is a simple tool for creating modern online (cloud) books in pure typst. It has similar use cases as #link("https://rust-lang.github.io/mdBook/index.html")[mdBook], which is ideal for creating product or API documentation, tutorials, course materials or anything that requires a clean, easily navigable and customizable presentation.

// *shiroa* is heavily inspired by mdBook, but it is considered to be more adapted to Typst style, hence no guarantee of compatibility with mdBook. Compared with mdBook, we utilizes typst's advantages to bring a more flexible writing experience, such as #link("https://typst.app/docs/reference/scripting/")[scripting] and #link("https://typst.app/docs/packages/")[package].

// = Not yet finished project

// *shiroa* still have many items in todolist:

// - User experience, which is transparent to writers:
//   - SEO optimization
//   - Faster font loading
//   - Reducing the size of theme bundle files and compiled svg artifacts
//   - Add prev/next buttons
//   - initialize a book project interactively
// - Writer experience:
//   - Multimedia html elements
//   - Book specific helper functions
//   - Customize Favicon
// - Developer experience:
//   - Continuous CI testing for `shiroa`

// Hence you may meet many problems. We are active to receive questions and bugs in #link("https://github.com/Myriad-Dreamin/shiroa/issues")[Github Issues] and please feel free to open issues. If you'd like to contribute, please consider opening a #link("https://github.com/Myriad-Dreamin/shiroa/pulls")[pull request].

// = License

// *shiroa* source and documentation are released under the #link("https://www.apache.org/licenses/LICENSE-2.0")[Apache License v2.0].

// The source and documentation in theme directory in `themes/mdbook` are released under the #link("https://www.mozilla.org/en-US/MPL/2.0/")[Mozilla Public License v2.0].
