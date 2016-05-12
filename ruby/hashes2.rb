# 5.3 Symbols and Hashes

# In phase-0-tracks/ruby/hashes.rb, pseudocode and write a program that will allow an interior designer to enter the details
# of a given client: the client's name, age, number of children, decor theme, and so on (you can choose your own as long as it's a
# good mix of string, integer, and boolean data).
#
# Your keys should be symbols unless you find that you need a string for some reason -- usually only when spaces or other "user friendly"
#  formatting are needed (as in the case of using someone's full name as a hash key).
#   Basically, symbols are simpler for programmers to use, and readable enough by technical folks to be used in place of strings most of the time.
#
# Your program should ...
#
# Prompt the designer/user for all of this information.
# Convert any user input to the appropriate data type.
# Print the hash back out to the screen when the designer has answered all of the questions.

#Ask the user for the appropriate information
puts "Enter the details of your client!"

# Ask the user for each tipe of information/details
puts "Can I have your name please?"
 name = gets.chomp.capitalize

puts "Can I have your age please?"
 age = gets.chomp.to_i

puts "How many children do you have?"
 nmbr_children = gets.chomp.to_i

puts "What decor theme do you prefer?"
 decor_theme = gets.chomp.to_s.capitalize

puts "Do you like hardwood floors?(yes/no)"
    hard_floors = gets.chomp
    if hard_floors == 'yes'
      hard_floors = true
    else
      hard_floors = false
    end

puts "How many rooms would you like ?"
    nmbr_rooms = gets.chomp.to_i

# Create a hash with all the user data

user_data = {
  Name: name,
  Age: age,
  Nmbr_children: nmbr_children,
  Decor_theme: decor_theme,
  Hard_floors: hard_floors,
  Nmbr_rooms: nmbr_rooms,
}

# Print the hash back to the screen

user_data.each {|k, v| print "#{k} => #{v}\n"}

# Give the user the opportunity to update a key (no need to loop, once is fine). After all, sometimes users make mistakes!
# If the designer says "none", skip it. But if the designer enters "decor_theme" (for example),
# your program should ask for a new value and update the :decor_theme key.
# (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.)
# You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.
# Print the latest version of the hash, and exit the program.

puts "Would you like to update some of your information? Please enter a key('none' if don't)"
   key = gets.chomp.to_sym.capitalize

puts "Please enter the new data/value for this key"
  value = gets.chomp.capitalize


  if key == :none
    puts "Thank you come back again!"
  else
    new_data = {key => value}
    user_data.merge!(new_data)
  end

puts "This is new hash with the new user data:"
p user_data
