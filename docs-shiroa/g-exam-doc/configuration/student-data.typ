#import "mod.typ": *

#show: book-page.with(title: "studen-data")

= Student data

In order for a header in which the student must enter his/her personal data, it must be speciﬁed on the
template by means of the "show-studen-data" property indicating how you want this box to appear.
Values can be:

- ﬁrst-page: It will only appear on the ﬁrst page.
- odd-pages: It will appear on odd-numbered pages.
- none: The user information box will not appear.

The following example will display student information on the ﬁrst page.

```typst
#show: g-exam.with(
    show-studen-data: "first-page",
)
```