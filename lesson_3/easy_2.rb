=begin
# Question 1 check if "Spot" is present in given hash.
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
p ages.any? {|key| key == "Spot"}
p ages.include?("Spot")
p ages.fetch("Spot", "Spot isn't here")
p ages.has_key?("Spot")
p ages.member?("Spot")


# Question 2. convert given string in the 4 given ways.
munsters_description = "The Munsters are creepy in a good way."

p munsters_description.swapcase # can mutate with !
p munsters_description.capitalize # Can mutate with !
p munsters_description.downcase # can mutate with !
p munsters_description.upcase # Can mutate with !

# Q3 add remaining family to existing hash
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }
p ages.merge!(additional_ages)


# Q4 Check string if word exists.
advice = "Few things in life are as important as house training your pet dinosaur."
p advice.include? "Dino" # It works if you downcase 'Dino' to 'dino'


# Q5 refactor an array assignment.

flintstones = %w[Fred Barney Wilma Betty BamBam Pebbles]
p flintstones


# Q6 Add Dino to previous array
flintstones = %w[Fred Barney Wilma Betty BamBam Pebbles]
flintstones << 'Dino'
p flintstones


# Q7 how to add multiple items to an array
flintstones = %w[Fred Barney Wilma Betty BamBam Pebbles]
p flintstones.push('Dino', 'Hoppy')
p flintstones.insert(6, 'Dino', 'Hoppy')
p flintstones.concat(%w[Dino Hoppy])


# Q8 modify string to return everything up to but not including house
advice = "Few things in life are as important as house training your pet dinosaur."
p advice.slice(0,39) # Dumb way
p advice.slice!(0, advice.index('house')) # Smart way


# Q9 count the lower-case 't's in given string.
statement = "The Flintstones Rock!"
p statement.count "t"


# Q10 Center given string within a 40 car wide table
title = "Flintstone Family Members"
p title.center(40)
=end