# pp1: [1,2,3] 'hi' is a truthy value, and select will return an array of all elements that the block resolved 'truthy' for.

# pp2 2. 'if a block is given, it counts the number of elements yielding a true value' so says the holy scripture documentation.

# pp3 [1,2,3] since puts num returns a nill value, it should return all values for which the block didn't resolve 'true' note that this version isn't destructive. it's simmilar to select.

# pp4 {'a' => "ant", 'b' => "bear", 'c' => "cat"}
# it assigns the key value to the 0 index of the object, which is a string. So the key is the first letter, which then has the value of the whole value. the value of 'dolphin' would have 'd' => 'dolphin' entry into the array.
# I rather like this since I think it's quite clever.

# pp5 it returns [a, 'ant']. since shift returns the first entry in a hash as an array. This removal is destructive to the reference.

# pp6 returns the size of the return of pop, which is the last element of the array 'caterpillar' so 11 for the 11 chars.

# pp7 'true' .any? returns t/f values. it will return true if any condition in the block results in a truthy value. While puts returns null, num.odd? returns true for 1 and 3.
# There is an error in the Ruby documetnation stating that 'The method returns true if the block ever returns a value other than false or nil. '
# however that's not the case. Messaged the support at Ruby to let them know.

# pp8 returns the first 2 elements of the array: [1, 2]. It does this by value so it's not destrutive.

# pp9 map always returns an array. since the first loop of map doesn't return anything, the first element is nil, and the second is 'bear'

# pp10 [1, nil, nil] since puts returns nil as the value to any number larger than 1