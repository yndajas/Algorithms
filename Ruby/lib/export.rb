class Algorithms::Export
  def self.json(object, filepath)
    json = object.to_json
    File.write(filepath, json)
  end
end
