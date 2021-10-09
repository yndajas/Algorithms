require_relative '../config/environment'
require_relative 'export'

class Algorithms::FirstUniqueCharacter
  attr_accessor :string

  def self.character(string)
    instance = new
    instance.string = string
    instance.find_first_unique_character
  end

  def self.json(string)
    character = self.character(string)
    character.to_json
  end

  def self.export_json(string, filepath)
    character = self.character(string)
    Algorithms::Export.json(character, filepath)
  end
end
