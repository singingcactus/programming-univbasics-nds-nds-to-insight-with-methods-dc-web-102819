require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  director_index = 0


  while director_index < nds.length do
      director_name[director_index] = nds[director_index][:name]
      director_hash = nds[director_index]
      director_index += 1
  end

  result = {
    director_name[0] => gross_for_director(nds[0]),
    director_name[1] => gross_for_director(nds[1]),
    director_name[2] => gross_for_director(nds[2]),
    director_name[3] => gross_for_director(nds[3]),
    director_name[4] => gross_for_director(nds[4]),
    director_name[5] => gross_for_director(nds[5]),
    director_name[6] => gross_for_director(nds[6]),
    director_name[7] => gross_for_director(nds[7]),
  }
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
film_index = 0
gross = 0
  while film_index < director_data[:movies].length do
    gross += director_data[:movies][film_index][:worldwide_grosses]
    film_index += 1
  end
  gross
end
