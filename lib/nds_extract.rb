$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

#AoHoAoH

def directors_totals(nds)
  total = {}
  counter = 0
  while counter < nds.length do
    key1 = (nds[counter][:name])
    counter2 = 0
    total[key1] = 0
    binding.pry
    while counter2 < nds[counter][movies].length
      value = nds[counter][:movies][counter2][:worldwide_gross]
      total[key1] += value
      counter2 += 1
    end
    counter += 1
  end
  total
end


#nds[0][:movies][0][:worldwide_gross]
