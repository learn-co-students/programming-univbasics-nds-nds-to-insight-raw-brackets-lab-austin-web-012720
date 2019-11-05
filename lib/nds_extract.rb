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
  
 
  index = 0 
  while index< nds.length do
    
     sum = 0 
     movie_number = 0 
    
    while movie_number <nds[index][:movies].length do
     
        sum+= nds[index][:movies][movie_number][:worldwide_gross]
        movie_number +=1 
      end
      result[nds[index][:name]]= sum #get back to this!
      
      index += 1 
      end
 
    nil 
    result
    end
   
