#import "mod.typ": *

#show: book-page.with(title: "question")

= Header
 
= grade-table

= Punctuation Decimal Separator

Depending on the language we use, the decimal separator may change. To specify the decimal sepa-
rator we want to use, we use ‘decimal-separator’ with the values ‘.’ or ‘,’ as follows.

```typst
#show: g-exam.with(
    decimal-separator: ",",
)
```