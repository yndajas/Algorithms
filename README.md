# Algorithms

A collection of algorithms implemented in JavaScript and/or Ruby.

For Ruby implementations, you can:

- use the algorithms via a command-line interface
- include them in Ruby apps (where written in Ruby)
- export output to JSON (both via the command-line interface and when included in other apps)

## Features

### Anagram

<b>Implementations:</b> JavaScript

Check if two strings containing only the characters a-z (lower case alphabetical) are anagrams of each other. Strings that are identical are not considered anagrams. E.g. "tool" and "loot" are anagrams, while "tool" and "fool" are not, and neither are "tool and "tool".

### Chessboard

<b>Implementations:</b> JavaScript

Print a chessboard (using "#" and "_" to represent black and white cells) in the console. Optioanlly customise board size and the strings that appear in alternating cells.

### Count unique values

<b>Implementations:</b> JavaScript

Count the number of unique values in an array. E.g. [1, 2, 4] would return 3, [1, 2, 2, 2, 1] would return 2 and [1, 2, "2", 3] would return 4.

### First unique character

<b>Implementations:</b> Ruby

Find the first unique (non-repeating) character in a string. A-Z will be converted to a-z; all other characters will be ignored. E.g. "b" if the string is "aaabccc", or "r" if the string is "Esperanza Spalding".

### Spiral matrix

<b>Implementations:</b> Ruby

Populate a matrix of size n x n with the numbers 1 to n in a clockwise inward spiral fashion. E.g. if n = 3:

1 2 3<br/>
8 9 4<br/>
7 6 5

## Installation

For Ruby implementations, install Ruby ([help](https://www.ruby-lang.org/en/documentation/installation)</a>), then in a terminal:

1. `gem install bundler`
2. `cd Ruby` from within the repository
3. `bundle`

<i>Javascript installation instructions to follow.</i>

## Usage

### JavaScript

For now, JavaScript implementations are simply provided as exported functions in a dedicated file per algorithm. You can use these files in an app or copy the function to use within another file.

#### Anagram

- `anagram(stringOne, stringTwo)`

Replace `stringOne` and `stringTwo` with the two strings you'd like to compare.

#### Chessboard

- `chessboard()`
- `chessboard(number)`
- `chessboard(number, {1: stringOne, 2: stringTwo})`

Replace `number` with a number to customise the board size, and `stringOne` and `stringTwo` to customise the strings that appear in alternating cells.

#### Count unique values

- `countUniqueValues(array)`

Replace `array` with an array of values.

### Ruby

#### Via command-line interface

To use the command-line interface, which includes a menu of all algorithms:

`ruby bin/start` from within the `Ruby` directory (`bin/start` may work depending on your operating system)

#### Via another Ruby app

- add `require 'pathToFile'` to the top section of a Ruby file, replacing 'pathToFile' with the full path to the file specified in the relevant section below (you could also use `require_relative` and provide a relative path)

##### First unique character

Path: `Algorithms/Ruby/lib/first_unique_character.rb`

###### Class methods

- `Algorithms::FirstUniqueCharacter.character(string)`
- `Algorithms::FirstUniqueCharacter.json(string)`
- `Algorithms::FirstUniqueCharacter.export_json(string, filepath)`

Replace `string` with a string and, where applicable, `filepath` with the full filepath (including filename) of where you want the exported JSON file to go.

##### Spiral matrix

Path: `Algorithms/Ruby/lib/spiral_matrix.rb`

###### Class methods

- `Algorithms::SpiralMatrix.hash(number)`
- `Algorithms::SpiralMatrix.json(number)`
- `Algorithms::SpiralMatrix.export_json(number, filepath)`

Replace `number` with a number and, where applicable, `filepath` with the full filepath (including filename) of where you want the exported JSON file to go.

## Contributing

Bug reports and pull requests are welcome on GitHub at [https://github.com/yndajas/Algorithms](https://github.com/yndajas/Algorithms).

## Licence

This app is made available open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
