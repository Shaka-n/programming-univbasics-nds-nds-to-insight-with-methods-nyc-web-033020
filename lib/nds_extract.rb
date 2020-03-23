$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
pp directors_database[0]
# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  gross_total= 0  
    director_name = director_data[:name]
    movie_index = 0 
    while movie_index < director_data[:movies].length do
      gross_total += director_data[:movies][movie_index][:worldwide_gross]
        movie_index+=1
      end
  gross_total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  gross_for_director(nds)
  
end
