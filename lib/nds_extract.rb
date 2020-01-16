def directors_totals(nds)

    result = {}
    row_index = 0 

    while row_index < directors_database.count do #while row index smaller than director name quantity
 
   director_total = 0
   movie_index = 0 #movie counter
   
   while movie_index < directors_database[row_index][:movies].count do

     director_total += directors_database[row_index][:movies][movie_index][:worldwide_gross]
     
     movie_index += 1
     
   end
   result[directors_database[row_index][:name]] = director_total
   row_index += 1
 end

result
end