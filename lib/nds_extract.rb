$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# pp directors_database
# directors_database is AoHoAoH
# directors_database[array of director name][hash of movie array][array of movie Hashes][keys]
#       -> movie keys: String title, String studio, Integer worldwide_gross, Integer release_year


def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
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

  result = {}

  director_index = 0
  movie_index = 0

  while director_index < nds.size do
    director = nds[director_index][:name]
    result[director] = 0
    while movie_index < nds[director_index][:movies].size do
      result[director] += nds[director_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end
    director_index += 1
    movie_index = 0
  end

  result
end
