$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  row_index = 0 
  def get_hash_by_name()
    
end
director_total = 0 
director_index = {}
  while row_index < nds.length do 
    column_index = 0 
    
    while column_index <  nds[row_index][:movies].length do 
    director_total += nds[row_index][:movies][column_index][:worldwide_gross]
    column_index += 1 
  end
  director_index[nds[row_index][:name]] = director_total
   row_index += 1
   director_total = 0 
end
return director_index
  
  
  
  
  
end
