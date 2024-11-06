#import "mod.typ": *

#show: book-page.with(title: "Grade table")

= Scoreboard

We will be able to show a scoreboard, with the points for each question. In order for this table to
appear, we will have to set the show-grade-table a *true*, a *false* so that it doesn´t show up.

```typst
#show: g-exam.with(
    show-grade-table: true,
)
```
