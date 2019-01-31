# Q1 greeting = nil due to it being initalized in an if block that wasn't exicuted.
# However if it was true, it would throw out an error

# Q2 the modified hash { a: 'hi there'} Both greetings and informal_greeting were 
# pointing at the same string in memory, the << can mutate the reference in memory, which
# both variabes are referencing.

# Q3
# A: "one", "two" "three". The method created new variables since an assignement was performed.
# B: Same as above
# C: two, three, one since gsub! mutates the spot in memory.

# Q4 returns false if array isn't right length or out of number range.
# Returns true if there are indeed 4 sets of numbers between 0-255 seperated by '.'
=begin
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.length == 4
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end
   true
end
=end

