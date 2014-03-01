require 'json'

class JSONCombiner
  def initialize(*inputjsons)
    @inputjsons = inputjsons
  end
  
  # Concatenates JSONs together
  def concatenate
    savearray = Array.new
    @inputjsons.each do |j|
      nextfile = JSON.parse(j)
      
      nextfile.each do |h|
         if !(savearray.include? h)
           savearray.push(h)
         end
      end
    end
    
    return JSON.pretty_generate(savearray)
  end
end
