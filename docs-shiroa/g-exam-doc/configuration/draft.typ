#import "mod.typ": *

#show: book-page.with(title: "draft")

= Draft

We can indicate that the exam is a deletion with the field draf to true.

```typst

#show: exam.with(
  draft: true,
)

```

