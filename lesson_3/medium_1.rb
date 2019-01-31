=begin
# Q1 print phrase 10 times with 1 space added left each time. In one line.
10.times {|i| puts (" " * i) + "The Flintstones Rock!" }

#Q2 find 2 ways to fix the bug.
puts "the value of 40 + 2 is #{40 + 2}"
puts "the value of 40 + 2 is " + (40 + 2).to_s

# Q3 refactor factors code.
def factors(number)
  divisor = number
  factors = []
  while divisor > 0 do
      factors << number / divisor if number % divisor == 0
      divisor -= 1
  end
  factors
end
p factors(-1)

#bonus 1 What is the purpose of the number % divisor == 0 ? Checks to see if number is a factor to see if it divides evenly
# bonus 2: What is the purpose of the second-to-last line (line 8) in the method (the factors before the method's end)?
# it's so it returns the array of factors.


# Q4 is there a difference?
# While the return is the same, the rolling_buffer1 mutates the caller, and rolling_buffer2 does not
# To point it out, you can see the second method creating a new variable
# while the first one pushes the new_element towards the caller 'buffer'
# The first method returns the modifed buffer, and the second returns the value of the newly created 'buffer'

# Q5 debugging given code
# The problem is that 'limit = 15' isn't available within a methods scope
#There are two easy fixes you can impliment. 1. defining limit within the method
# 2. addint limit as an argument. I chose this one since it's future resistant.

def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, 15)
puts "result is #{result}"

# Q6 make the program easier to maintain.
def append_rutabaga(a_string_param, an_array_param)
  a_string_param += " rutabaga"
  an_array_param += ["rutabaga"]
  
  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = append_rutabaga(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

#Q7 Guess the output. 42 - 8 = 34 since we didn't p new_answer
answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# Q8 Did Spot screw with the data?
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end
# Yes, he called ['age'] and ['gender'] on each family member and reassigned them.

# Q9 paper.
# rps('paper', 'rock') => paper => rps('paper', 'rock') => paper
#this one gave me a headache
def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end
puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")
=end

# Q10 'no'
def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end
p bar(foo)
