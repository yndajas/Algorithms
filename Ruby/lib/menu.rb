class Algorithms::Menu
  def run
    puts "Welcome to algorithms!\n\n"
    choice = ''
    until %w[exit quit q].include?(choice.downcase)
      puts '> Choose an algorithm or type "Exit", "Quit" or "Q" to exit'
      puts "    1: spiral matrix\n\n"
      print '    >> '
      choice = gets.strip
      puts

      case choice
      when '1'
        Algorithms::SpiralMatrix.new.run
        puts
      end
    end
  end
end