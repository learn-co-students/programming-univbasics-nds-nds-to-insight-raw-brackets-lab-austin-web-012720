$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require "pry"
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
  #binding.pry
  
  row_index = 0 
  while row_index < nds.length do 
    total = 0
    column_index = 0 
    director_name = nds[row_index][:name]
    movies = nds[row_index][:movies]
    while column_index < movies.length do 
      total += movies[column_index][:worldwide_gross]
      column_index += 1
      
    end
    result[director_name] = total
    row_index += 1
  end
  result
  
end
