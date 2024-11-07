#import "mod.typ": *

#show: book-page.with(title: "Question")

= Questions
 
The exam questions will be indicated by the *question* command, in which we can indicate the score of the exam, which will automatically appear in the question table.

If a question has subsubquestionsections, we can indicate them with the *subquestion* command. You can indicate the score in both question and subquestion.

```typst

#show: exam.with()
#g-question(points: 2)[List prime numbers]
#v(1fr)

#g-question(points: 1)[Complete the following sentences]

#g-subquestion[Don Quixote was written by ...]
#v(1fr)

#g-subquestion[The name of the continent we live on is ...]
#v(1fr)

```

= Punctuation Decimal Separator

Depending on the language we use, the decimal separator may change. To specify the decimal sepa-
rator we want to use, we use ‘decimal-separator’ with the values ‘.’ or ‘,’ as follows.

```typst
#show: exam.with(
    decimal-separator: ",",
)
```