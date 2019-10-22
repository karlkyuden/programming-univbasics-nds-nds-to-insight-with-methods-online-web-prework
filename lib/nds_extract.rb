require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  nil
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  
  while row_index < directors_database.length do
    column_index = 0
    grandTotal = 0
    while column_index < directors_database[row_index][:movies].length do
      grandTotal +=directors_database[row_index][:movies][column_index][:worldwide_gross]
      column_index += 1
    end
    
    director = directors_database[row_index][:name]
    newHash[director] = grandTotal
    row_index += 1
  end
  return newHash
  
end

