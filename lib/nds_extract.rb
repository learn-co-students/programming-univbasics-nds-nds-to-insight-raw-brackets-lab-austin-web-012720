$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  
  indexDirectors = 0 
  totals = {} 
  
  while indexDirectors < nds.length do 
    nameDirector = nds[indexDirectors][:name]
    totals[nameDirector] = 0
    indexMovies = 0 
    
    while indexMovies < nds[indexDirectors][:movies].length do 
      totals[nameDirector] += nds[indexDirectors][:movies][indexMovies][:worldwide_gross]
      indexMovies += 1 
    end 
    
    indexDirectors += 1 
  end 
  
  totals
end
