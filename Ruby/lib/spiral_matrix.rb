class Algorithms::SpiralMatrix
  attr_accessor :n, :hash, :cell, :cells_filled

  def run
    puts 'Give me a number!'
    self.n = Integer(gets.strip)
    make_hash_frame
    fill_hash
    print_hash
  end

  def fill_hash
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
    hash.each { |row| puts row.join(' ') }
  end

  private

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
end
