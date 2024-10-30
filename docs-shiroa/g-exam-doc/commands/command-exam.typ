#import "@preview/mantys:0.1.4": *

#import "../../../src/exam.typ"

#show: mantys.with(
	name:		"your-package-name",
	title: 		[A title for the manual],
	subtitle: 	[A subtitle for the manual],
	info:		[A short descriptive text for the package.],
	authors:	"Your Name",
	url:		"https://github.com/repository/url",
	version:	"0.0.1",
	date:		"date-of-release",
	abstract: 	[
		A few paragraphs of text to describe the package.
	],

	// example-imports: ()
)

// #let show-module(name, scope: (:), outlined: true) = tidy-module(
//   read("./../../src/exam.typ"),
//   name: name,
//   show-outline: outlined,
//   include-examples-scope: true,
//   extract-headings: 3,
//   tidy: tidy
// )