require_relative '../config/environment'
require_relative 'export'

class Algorithms::FirstUniqueCharacter
  attr_accessor :string, :first_unique_character, :character_hash

  def self.character(string)
    instance = new
    instance.string = string
    instance.find_first_unique_character
    instance.first_unique_character
  end

  def self.json(string)
    character = self.character(string)
    character.to_json
  end

  def self.export_json(string, filepath)
    character = self.character(string)
    Algorithms::Export.json(character, filepath)
  end

  def run
    puts "~First unique character~\n\n"
    puts '> Give me a string (using only a-z)!'
    print '>> '
    self.string = gets.strip.downcase.gsub(/[^a-z]/, '')
    find_first_unique_character
    print_first_unique_character
    Algorithms::Export.offer_export(first_unique_character)
  end

  private

  def find_first_unique_character
    self.character_hash = {}

    string.each_char do |letter|
      character_hash[letter] ? character_hash[letter] += 1 : character_hash[letter] = 1
    end

    self.first_unique_character = 'No unique characters'
    found = false
    character_index = 0

    until found || character_index == string.length - 1
      if character_hash[string[character_index]] == 1
        self.first_unique_character = string[character_index]
        found = true
      end
      character_index += 1
    end
  end

  def print_first_unique_character
    puts
    puts first_unique_character
    puts
  end
end
