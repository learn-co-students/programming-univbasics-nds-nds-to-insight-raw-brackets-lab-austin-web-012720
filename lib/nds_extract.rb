$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'
require 'pp'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!

  
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"

  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  
  #this code is for iterating through director names and storing their worldwide_gross into an array of hashes 'result'
  
  result = {}
  
  # result =  {name: '',
  #           total: 0
  #           }
  
  index1 = 0
  while index1 < nds.size
    director_name = nds[index1][:name]
    result[director_name] = 0
    index2 = 0
    while index2 < nds[index1][:movies].size
      result[director_name] += nds[index1][:movies][index2][:worldwide_gross]
      index2 += 1
    end
  index1 += 1
  end
  
  
  # index1 = 0 
  # result_index = 0
  # while index1 < nds.size
  # index2 = 0
  #   while index2 < nds[index1][:movies].size
  #     result[index] << nds[index1][:movies][index2][:worldwide_gross]
  #     index2 += 1
  #     result_index += 1
  #   end
  #   result[] <<  nds[index1][:name]
  #   index1 +=1
  # end
  
  # #this snippet of code is for gathering the totals of worldwide_gross for each director 
  # total = 0
  # index1 = 0
  # index2 = 0 
  # while index1 < result.size
  #   while index2 < result[index1].size
  #     total += result[index1][index2]
  #     index2 +=1
  #   end
  #   index1 += 1
  # end
  
  #pp nds
  #binding.pry
  result
end
