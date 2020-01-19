$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

pp directors_database
def directors_totals(nds)
  index = 0
  while index < nds.length do
    num = 0
    sum = 0
    
    while num < nds [index][:movies].length do
      num += nds[index][:movies][:world_gross]
      sum += 1
    end
    result[nds[index][:name]]= num
    index += 1
  end
  nil
  result
end
