# Microtext

A micro Swift utility for processing text.

## Installation

To do..

## Usage

```swift
Microtext.breakSentence("Gaal Dornick"); // ["Gaal", "Dornick"]

Microtext.truncate("Lewis Pirenne", 10) // "Lewis Pire..."

Microtext.abbrevName("Hari Seldon"); // "Hari S."

Microtext.firstName("Lors Avakim"); // "Lors"

Microtext.lastName("Salvor Hardin"); // "Hardin"

Microtext.getInitials("Bor Alurin"); // "B. A"

Microtext.excerpt("Who is John Galt?", "John"); // returns "...John Galt?..."

Microtext.hideEmail("isaac@asimov.org"); // "is...@asimov.org"

Microtext.parameterize("It was childish to feel disappointed");
// "it-was-childish-to-feel-disappointed"

Microtext.hideBadWord("Bitch!"); // "B!#&&"
```

## Author

* Rodrigo Alves - rodrigovieira1994 [at] gmail [dot] com

## Contributions

You can contribute to Microtext by adding new text processing/helper functions or by improving the existing ones as well as fixing eventual bugs. In any case, your contribution is totally welcome.

###### Testing

To do..

## TO-DO

- [ ] Add tests
- [ ] Actually implement several of the methods described above
- [ ] Add this project to Cocoapods
- [ ] Add this project to Carthage
- [ ] Add this project to Travis CI

## License

Released under the MIT License. See LICENSE.txt for details.

Copyright (c) 2015 Rodrigo Alves
