#import "mod.typ": *

#show: book-page.with(title: "draft")

= Header

The template will include a header in the exam, with the information entered in the template. We can
indicate a logo of the educational center, a description of the exam, subject, content, academic level, …

```typst
#show: g-exam.with(
    author: (
        name: "Carl Friedrich Gauss",
        email: "matheschool@outlook.es",
        watermark: "Teacher: Carl", ),
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
)
```

= Question

To enter the questions, use the q-question, followed by the text of the question. You can include the
score of the question by entering the parameter point.

```typst
#g-question(points: 2)[Question text.]
#v(1fr)
```

To create sub-questions, it will be done in the same way with the q-subquestion, command, which
will be nested to the question asked in the previous line. In the same way, the score of the question
can be indicated, in case of indicating a score to the question and the sub-questions, it will be added
to the total. Therefore, it is advisable to only indicate the score in one level.

The following example asks a ﬁrst question, with no sub-questions, with a score of two points and a
second question with two sub-questions with a score of 2 points each, which will show that the second
question is worth a total of four points in the scorecard.

```typst
#import "@preview/g-exam:0.3.0": *
#show: g-exam.with()

#g-question(points: 2)[List prime numbers]
#v(1fr)

#g-question[Complete the following sentences]

#g-subquestion(points: 2)[Don Quixote was written by ...]
#v(1fr)

#g-subquestion(points: 2)[The name of the continent we live on is ...]
#v(1fr)
```