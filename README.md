# algorithms

A collection of algorithms implmented in Ruby and/or JavaScript. You can:

- use the algorithms via a command-line interface
- include them in other Ruby apps
- export output to JSON (both via the command-line interface and when included in other apps)

## Features

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

`bin/start` from within the `Ruby` directory (on Windows, you may need to run `ruby bin/start`)

#### Via another Ruby app

- add `require 'pathToFile'` to the top section of a Ruby file, replacing 'pathToFile' with the full path to the file specified in the relevant section below (you could also use `require_relative` and provide a relative path)

##### Spiral matrix

Path: `algorithms/Ruby/lib/spiral_matrix.rb`

#### Class methods

- `Algorithms::SpiralMatrix.hash(n)`
- `Algorithms::SpiralMatrix.json(n)`
- `Algorithms::SpiralMatrix.export_json(n, filepath)`

Replace `n` with a number and, where applicable, `filepath` with the full filepath (including filename) of where you want the exported JSON file to go.

## Contributing

Bug reports and pull requests are welcome on GitHub at [https://github.com/yndajas/algorithms](https://github.com/yndajas/algorithms).

## Licence

This app is made available open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
