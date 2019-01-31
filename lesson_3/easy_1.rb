# Question 1
# it would puts out the orginal array since uniq isn't a mutator

# Question 2
=begin
    what is != and where should you use it? Does not equal. Use it when
    compairing values to check if they're not equal to each other 1 != 2 # => true
    put ! before something, like !user_name: flips the boolean result.
    put ! after something, like words.uniq!: doesn't do anything. However it's a convention to label a method as mutating.
    put ? before something: as far as I know, nothing.
    put ? after something: it's a ternary expression
    put !! before something, like !!user_name: turns it into it's boolean value. a = 1, !!a == true
=end

# Question 3 Replace the word "important" with "urgent" in this string:
=begin
advice = "Few things in life are as important as house training your pet dinosaur."
advice.gsub!('important', 'urgent')


# Question 4 how these 2 methods differ
numbers = [1, 2, 3, 4, 5]

numbers.delete_at(1) #deletes at index 1
numbers.delete(1) #deletes given value from array


# Question 5 Programmatically determine if 42 lies between 10 and 100.
puts (10..100).include?(42)


# Question 6 two different ways to add "Four score and " in front of given string
famous_words = "seven years ago..."
famous_words.insert(0, "Four score and ") 
famous_words.prepend("Four score and ")
puts famous_words
=end

# Question 7 
# 42. Judging by the docs it maybe checks to see if there's a variable in a string
# and treats it as such?

# Question 8 un-nest given array
=begin
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
p flintstones
flintstones.flatten!
p flintstones
=end
# question 9 turn hash into an array with only two elements.
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
best_friend = flintstones.assoc("Barney")
p best_friend
