#import "mod.typ": *

#show: book-page.with(title: "localization")

= Localization

== Languages

You can specify the language in which you want the text to appear. To do this, we use the "languaje"
property. It can take the values "en", "es", "de", "fr", "pt", "it", "nl".

```typst
#show: exam.with(
    language: "es",
)
```