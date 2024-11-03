#import "@preview/shiroa:0.1.2": *

#import "../template/ebook.typ"

#show: ebook.project.with(title: "g-exam Doc", spec: "book.typ")

// set a resolver for inclusion
#ebook.resolve-inclusion(it => include it) 
