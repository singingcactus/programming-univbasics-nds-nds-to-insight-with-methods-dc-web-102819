require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  director_index = 0
  director_name = []
  result = { }


  while director_index < nds.length do
      director_name = nds[director_index][:name]
      result[director_name] = gross_for_director(nds[director_index])
      director_index += 1
  end

  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
film_index = 0
gross = 0
  while film_index < director_data[:movies].length do
    gross += director_data[:movies][film_index][:worldwide_gross]
    film_index += 1
  end
  gross
end
