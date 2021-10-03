require_relative '../config/environment'
require_relative 'export'

class Algorithms::SpiralMatrix
  attr_accessor :n, :hash, :cell, :cells_filled

  def self.hash(n)
    instance = new
    instance.n = n
    instance.fill_hash
    instance.hash
  end

  def self.json(n)
    hash = self.hash(n)
    hash.to_json
  end

  def self.export_json(n, filepath)
    hash = self.hash(n)
    Algorithms::Export.json(hash, filepath)
  end

  def run
    puts "~Spiral matrix~\n\n"
    puts '> Give me a number!'
    print '>> '
    self.n = Integer(gets.strip)
    fill_hash
    print_hash
    offer_export
  end

  def fill_hash
    make_hash_frame
    self.cell = { row: 0, column: 0 }
    self.cells_filled = 0
    fill_cell

    until cells_filled == n**2
      fill_cell while move_right
      fill_cell while move_down
      fill_cell while move_left
      fill_cell while move_up
    end
  end

  def print_hash
    puts
    hash.each do |row|
      puts row.collect { |integer| integer_with_spacing(integer) }.join(' ')
    end
    puts
  end

  private

  def digits(n = self.n)
    working = n
    digits = 0
    until working < 1
      digits += 1
      working /= 10
    end
    digits
  end

  def max_digits
    @max_digits ||= digits(n**2)
  end

  def make_hash_frame
    self.hash = Array.new(n).collect { |_array| Array.new(n) }
  end

  def fill_cell
    hash[cell[:row]][cell[:column]] = (self.cells_filled += 1)
  end

  def move_right
    if cell[:column] + 1 > n - 1 || !hash[cell[:row]][cell[:column] + 1].nil?
      false
    else
      cell[:column] += 1
    end
  end

  def move_down
    if cell[:row] + 1 > n - 1 || !hash[cell[:row] + 1][cell[:column]].nil?
      false
    else
      cell[:row] += 1
    end
  end

  def move_left
    if (cell[:column] - 1).negative? || !hash[cell[:row]][cell[:column] - 1].nil?
      false
    else
      cell[:column] -= 1
    end
  end

  def move_up
    if (cell[:row] - 1).negative? || !hash[cell[:row] - 1][cell[:column]].nil?
      false
    else
      cell[:row] -= 1
    end
  end

  def integer_with_spacing(integer)
    spaces = ' ' * (max_digits - digits(integer))
    "#{integer}#{spaces}"
  end

  def offer_export
    puts 'Export to JSON? (y/n)'
    export = ''
    export = gets.strip until %w[yes no y n].include?(export)
    if %w[yes y].include?(export)
      puts "\nEnter a filepath (including filename)"
      filepath = gets.strip
      Algorithms::Export.json(hash, filepath)
      puts "\nFile successfully exported to \"#{filepath}\"\n"
    end
  end
end
