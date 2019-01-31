# Q1
# the ID's changed after reassignment and kept it after leaving the block

# Q2 Changed after reassignment, however the method passes by value, not reference.

# Q3 my_string = 'pumpkins' an_array_param = pumpkins, rutabaga
# this is due to methods passing by value execpt when a mutator is called. += is not a mutator but a reassignment.
# << is a mutator so it can access and follow the reference towards the orginal my_array

# Q4 Same but flipped. my_string is now mutated and the array is not due to the reassignment
# the re-assignment creates a new array within the method scope called 'an_array_param'

# Q5 Ruby automaticly evaluates statements and automaticly returns 
# the last expression
=begin
def color_valid(color)
  color == 'blue' || color == 'green'
end
=end