# pp1 turn array into hash where names are keys, and values are the positions.
#possible each_with_index loop
=begin
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
hash = {}

flintstones.each_with_index { |item, index| hash[item] = index }


# pp2 add up all values from a hash
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
sum_of_ages = 0

ages.each_value {|v| sum_of_ages += v }

p sum_of_ages


# pp3 
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.delete_if {|k, v| v >= 100 }
p ages

# pp4 pick out minimum age from hash.
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
p ages.min


# pp5 find the index of name that starts with 'Be'
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
p flintstones.index { |w| w.include? "Be" }
flintstones.index { |name| name[0, 2] == "Be" } #This is more specific


# pp6 mutate array so names are just the first 3 characters
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.map! {|element| element = element[0, 3]  }


# pp7 Create a hash that expresses the frequency with which each letter occurs in this string
statement = "The Flintstones Rock"
result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end
=end
=begin
splited = statement.strip.split('')
splited.delete(" ")
hash = {}

splited.map {|x| 
  if hash.has_key?(x)
    hash[x] += 1
  else
    hash[x] = 1
  end
}
p hash


# pp8
# 1,3 since it pops out value 1 after the first pass while moving to index 1, which on the second pass is now 3, then it ends since it pops out value 2, meaning there's only 2 elements in the array, so there is no index 2 after the second pass.
# 1,2. it prints 1, removes 4. then prints 2, then removes 3. meaning there is no more elements of the array left to iterate over.

# pp9 titleize each word in given string.
words = "the flintstones rock"
list = words.split(" ")
words.clear

list.each {|x| 
  x.capitalize! 
  words += x + " "
}
#OR the much better way
words.split.map { |word| word.capitalize}.join(' ')


# pp10
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each_pair {|k,v| 
  case 
  when v["age"] > 64
    v["age_group"] = "Senior"
  when (18..64).include?(v["age"])
    v["age_group"] = "Adult"
  when (0..17).include?(v["age"])
    v["age_group"] = "Kid"
  end
}
p munsters

=end