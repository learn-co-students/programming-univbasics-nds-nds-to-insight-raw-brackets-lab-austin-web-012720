$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
# The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
 
def directors_totals(nds)
  pp nds[0][:movies][1][:worldwide_gross]
  result = Hash.new
  director = 0
  for director in 0...nds.length do
      mov = nds[director][:movies]
      gross = 0
      for i in 0...mov.length do
          gross+=mov[i][:worldwide_gross]
        
      end
  
    result[ nds[director][:name] ] = gross
  end
  
  return result 
  
  
  
end
