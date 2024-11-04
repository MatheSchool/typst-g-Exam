#import "mod.typ": *


#show: book-page.with(title: "Página 1")

// #let parse-show-module(path) = {
//   tidy.show-module(
//     tidy.parse-module(
//       read(path)
//     ),
//     show-outline: false,
//     sort-functions: none,
//     style: tidy.styles.default,
//   )
// }

= Página 1

== Prueba de pagina 1

#parse-show-module("../../src/question.typ") 

== Prueba de página 2

#lorem(100)

#let t = cross-link("/page2.typ")[Página 2]

En lace a #t muy bonito.

*Ejemplo*:

```typ
= Página 1

== Prueba de pagina 1

#lorem(100)

== Prueba de página 2

#lorem(100)
```
