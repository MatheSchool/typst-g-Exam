#import "@preview/oxifmt:0.2.0": strfmt
#import "./global.typ" : *
#import "./auxiliary.typ": *
#import "./g-question.typ": *
#import "./g-option.typ": *
#import "./g-solution.typ": *
#import "./g-clarification.typ": *
#import "./g-sugar.typ": *

/// Template for creating an exam.
/// 
///  - author: Infomation of author of exam.
///  - name (string, content): Name of author of exam.
///  - email (string): E-mail of author of exam.
///  - watermark (string): Watermark with information about the author of the document.
///  - school: Information of school.
///  - name (string, content): Name of the school or institution generating the exam.
///  - logo (none, content, bytes): Logo of the school or institution generating the exam.
///  - exam-info: Information of exam.
///  - academic-period (none, content, str): Academic period.
///  - academic-level (none, content, str): Academic level.
///  - academic-subject (none, content, str): Academic subname.
///  - number (none, content, str): Number of exam.
///  - content (none, content, str): Content of exam.
///  - model (none, content, str): Model of exam.
///  - date (sting): Date of generate document.
///  - keywords (string): Keywords of document.
///  - language (en, es, de, fr, pt, it, nl): Language of document. English, Spanish, German, French, Portuguese and Italian are defined.
///  - clarifications (string, content, array): Clarifications of exam. It will appear in a box on the first page.
///  - question-text-parameters: Parameter of text in question and subquestion. For example, it allows us to change the text size of the questions.
///  - show-student-data (none, true, false, "first-page", "all-pages", "odd-pages"): Show a box for the student to enter their details. It can appear on the first page, all pages or on all odd-numbered pages.
///  - show-grade-table: (bool): Show the grade table.
///  - decimal-separator: (".", ","): Indicate the decimal separation character.
///  - question-points-position: (none, left, right): Position of question points.
///  - show-solution: (true, false, "space", "spacex2", "spacex3"): Show the solutions.
///  - show-draft: (true, false): It shows a draft label in the background.
#let g-exam(
  author: (
    name: "",
    email: none,
    watermark: none
  ),
  school: (
    name: none,
    logo: none,
  ),
  exam-info: (
    academic-period: none,
    academic-level: none,
    academic-subject: none,
    number: none,
    content: none,
    model: none
  ),
  language: "en",
  localization: (
    grade-table-queston: none,
    grade-table-total: none,
    grade-table-points: none,
    grade-table-grade: none,
    point: none,
    points: none,
    page: none,
    page-counter-display: none,
    family-name: none,
    given-name: none,
    group: none,
    date: none,
    draft-label: none,
  ),
  date: none,
  keywords: none,
  clarifications: none,
  question-text-parameters: none,
  show-student-data: "first-page",
  // show-student-data: (
  //   given-name: true,
  //   family-name: true,
  //   group: true,
  //   date: true
  // ),
  show-grade-table: true,
  decimal-separator: ".",
  question-points-position: left,
  show-solution: true,
  show-draft: false,
  body,
) = {
  if type(show-student-data) != "dictionary" and type(show-student-data) != "array" {
    assert(show-student-data in (none, true, false, "first-page", "all-pages", "odd-pages"),
    message: "Invalid show studen data")
  }

  assert(question-points-position in (none, left, right),
      message: "Invalid question point position")

  assert(decimal-separator in (".", ","),
      message: "Invalid decimal separator")

  assert(show-solution in (true, false),
      message: "Invalid show solution value")

  assert(show-draft in (true, false),
      message: "Invalid show draft value")

  // set document(
  //   title: __document-name(exam-info: exam-info).trim(" "),
  //   author: author.name
  // )

  let margin-right = 2.5cm
  if (question-points-position == right) {
    margin-right = 3cm
  }

  set page(
    margin: (top: 5cm, right:margin-right),
    numbering: "1 / 1",
    number-align: right,
    header-ascent: 20%,

    header: {
      context{
        let __page-number = counter(page).at(here()).first()

        __show-header(
          page-number: __page-number,
          school: school, 
          exam-info: exam-info, 
          show-student-data: show-student-data)
      }
    },

    background: {
      __show-draft(draft-show: show-draft, draft-label:[draft])
    },

    footer: {
      context {
        line(length: 100%, stroke: 1pt + gray)       
        align(right)[
          #counter(page).display(__g-localization.final().page-counter-display, both: true,
          )
        ]
      // grid(
      //   columns: (1fr, 1fr, 1fr),
      //   if type(school) == "dictionary" {
      //     align(left, school.at("name", default : none))
      //   },
      //   align(center)[#exam-info.academic-period],
      //   align(right)[
      //     Página 
      //     #counter(page).display({
      //       "1 de 1"},
      //       both: true,
      //     )
      //   ]
      // )

      __show-watermark(author: author, school: school, exam-info: exam-info, question-points-position:question-points-position)
      }
    }
  )  

  __read-localization(language: language, localization: localization)
  __g-question-points-position-state.update(u => question-points-position)
  __g-question-text-parameters-state.update(question-text-parameters)

  set text(lang:language)

  if show-grade-table == true {
    context {
      __g-grade-table-header(
        decimal-separator: decimal-separator,
      )
    }
    v(10pt)
  }

  __g-show-solution.update(show-solution)

  __g-decimal-separator.update(decimal-separator)

  set par(justify: true) 

  if clarifications != none {
    __g-show_clarifications(clarifications: clarifications)
  }

  show: __sugar

  body
  
  [#hide[]<end-g-question-localization>]
  [#hide[]<end-g-exam>]
}
