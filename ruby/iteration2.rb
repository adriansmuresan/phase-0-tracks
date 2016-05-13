# Write a method that takes a block

def print_letters
	puts "A, B, C, D, E  runs before the block" # before the block
    yield 
end

 print_letters { puts  "A, B, C, D, E runs after the block"}

# Exemple of a array

 letters = ["A", "B", "C", "D", "E", "F", "G"]

# Example of a hash

hash_letters = {
	letter1: "A",
	letter2: "B",
	letter3: "C",
	letter4: "D",
	letter5: "E", 
	letter6: "F",
	letter7: "G"
}

# Itterate through the array with .each
letters.each do |letter|
	puts "The array going through the .each iterrator:"
	puts letter
end
p ("------------------------------------------")
# Use .map! on an array

letters.map! do |letter|
	puts "The array going through the .map! iterrator:"
	puts letter
	letter.next
end
puts "After the .map! iterrator"
p letters

p ("-------------------------------------------")
# Use the .each on a hash

hash_letters.each do |letter_key, letter_value|
	puts "going through the hash with the .each method "
    puts "This is  #{letter_key} it is assigned to #{letter_value}"
end
p ("--------------------------------------------")
# Use the .map on a hash

hash_letters.map do |letter_key, letter_value|
	puts "going through the hash with the .map method "
    puts "This is  #{letter_key} it is assigned to #{letter_value}"
end
puts "The hash after the .map iterrator:"
 p hash_letters


# Release 2


# 

p("-------------------------------------")
cars = ["Toyota", "Ford", "GM", "BMW", "Tesla"]

cars.each do |brand|
	puts "Itterate through the array"
	puts brand
	cars.select! {|brand| brand > "Ford"}
	puts "After the iterration"
	p cars
end

new_hash = {
	1 => "one",
	2 => "two",
	3 => "three",
	4 => "four"
}
p ("----------------------------------")
new_hash.map do |digit, digit_spell|
	puts "Itterate through the hash using .map"
	new_hash.delete_if {|digit, digit_spell| digit >= 3}
end
	puts "After the .map itterator and >= 3 removed "
	p new_hash



















