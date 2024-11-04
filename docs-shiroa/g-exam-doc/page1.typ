#import "mod.typ": *
// #import "@preview/tidy:0.3.0"

#show: book-page.with(title: "Página 1")

// #let parse-show-module(path) = {
//   //   tidy.parse-module(
//   //     read(path),
//   //     // scope: (
//   //     //   example: example,
//   //     //   show-parameter-block: show-parameter-block,
//   //     //   cetz: lib
//   //     // )
//   // )

//   tidy.show-module(
//     tidy.parse-module(
//       read(path),
//       // scope: (
//       //   example: example,
//       //   show-parameter-block: show-parameter-block,
//       //   cetz: lib
//       // )
//     ),
//     show-outline: false,
//     sort-functions: none,
//     // style: style 
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
