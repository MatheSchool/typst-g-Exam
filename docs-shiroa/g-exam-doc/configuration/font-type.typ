#import "mod.typ": *

#show: book-page.with(title: "Font type")

= Font type

For children with special needs, it is recommended to use a larger font, which can cause the entire
document to be out of place. To do this, the question-text-parameters parameter has been created in
which we will indicate the font that will have, only, the content of the questions, leaving the rest of the
text with the same font. In this way, the layout of the document will be maintained in a similar way.
The following example will use a 16-point, double-spaced font for the questions.

```typst
#show: g-exam.with(
    question-text-parameters: (size: 16pt, spacing:200%),
)
```