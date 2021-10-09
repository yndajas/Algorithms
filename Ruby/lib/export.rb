class Algorithms::Export
  def self.json(object, filepath)
    json = object.to_json
    File.write(filepath, json)
  end

  def self.offer_export(object)
    puts 'Export to JSON? (y/n)'
    export = ''
    export = gets.strip until %w[yes no y n].include?(export)
    if %w[yes y].include?(export)
      puts "\nEnter a filepath (including filename)"
      filepath = gets.strip
      json(object, filepath)
      puts "\nFile successfully exported to \"#{filepath}\"\n"
    end
  end
end
