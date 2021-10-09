# Algorithms

A collection of algorithms implemented in Ruby and/or JavaScript. You can:

- use the algorithms via a command-line interface
- include them in other Ruby apps
- export output to JSON (both via the command-line interface and when included in other apps)

## Features

### First unqiue character

Find the first unique (non-repeating) character in a string. A-Z will be converted to a-z; all other characters will be ignored. E.g. "b" if the string is "aaabccc", or "r" if the string is "Esperanza Spalding".

### Spiral matrix

Populate a matrix of size n x n with the numbers 1 to n in a clockwise inward spiral fashion. E.g. if n = 3:

1 2 3<br/>
8 9 4<br/>
7 6 5

## Installation

Install Ruby ([help](https://www.ruby-lang.org/en/documentation/installation)</a>), then in a terminal:

1. `gem install bundler`
2. `cd Ruby` from within the repository
3. `bundle`

## Usage

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

- `Algorithms::SpiralMatrix.hash(n)`
- `Algorithms::SpiralMatrix.json(n)`
- `Algorithms::SpiralMatrix.export_json(n, filepath)`

Replace `n` with a number and, where applicable, `filepath` with the full filepath (including filename) of where you want the exported JSON file to go.

## Contributing

Bug reports and pull requests are welcome on GitHub at [https://github.com/yndajas/Algorithms](https://github.com/yndajas/Algorithms).

## Licence

This app is made available open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
