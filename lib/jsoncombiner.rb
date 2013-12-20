require 'json'

class JSONCombiner
  def initialize(*inputjsons)
    @inputjsons = inputjsons
  end
  
  # Concatenates JSONs together
  def concatenate
    savearray = Array.new
    @inputjsons.each do |j|
      savearray = savearray + JSON.parse(j)
    end
    
    return savearray.to_json
  end
end

