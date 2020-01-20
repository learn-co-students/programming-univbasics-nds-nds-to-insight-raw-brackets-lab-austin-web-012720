$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  
  result = {}
  
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # Be sure to return the result at the end!
  
  for each in nds do
    dir_name = each[:name]
    gross = 0
    
    for movies in each[:movies] do
      gross += movies[:worldwide_gross]
    end
    
    result[dir_name] = gross
  end
  
  return result
end
