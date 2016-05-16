#5.6 Solo Challenge: Manipulating Strings with Iteration

#Pseudocode and write a method that takes a spy's real name (e.g., "Felicia Torres") and creates a fake name with it by doing the following:
#Swapping the first and last name.
#Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou',
# and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet.
# So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.
#
#This is the most complex algorithm you've had to write, and the toughest release of this challenge.
#How will you break it down into manageable pieces?
#Try to identify all of the mini-challenges and considerations that show up in your algorithm, such as:

#When will it be helpful to convert the string to an array to work with it more easily?
#How will you figure out whether a letter is a vowel?
#How will you deal with the fact that some letters are uppercase?
#How will you handle edge cases?
#You may find it helpful to write additional methods -- one for each job -- and then combine them.
#It's less overwhelming, for instance, to start converting your algorithm to code by writing a next_vowel method
#that takes a vowel character and returns the next vowel character.
#Once you know that small piece works because you've tested it with a few different vowels,
#you can use it in your program and trust that it's unlikely to be the source of any bugs that come up.
#This is a great way to make steady progress.

# Pseudocode
# input: a string
# output: another string
# each step described at the beginning of each step


answer = nil
alias_hash = {}
until answer == "quit"

# ask user for  name
	puts "Please enter a name:"
	initial_name = gets.chomp.downcase

# declare the vowels and the consonants
   vowels = "aeiou"
 	consonants = "bcdfghjklmnpqrstvwxyz"
   # take the name split it into first and last pu them into an array,reverse the names , join the name and split the reversed name into an array
   array_name = initial_name.split(" ").reverse.join(" ").split("")

# iterate through each letter in the array,put conditions that if the letter is a vowel, the index of the vowel will be found in
# the vowels variable and y will become the next index letter. If the letter is a consonant,
# the index of the consonant will be found in the consonant variable and x will become the next consonant
    array_name.map! do |y|
          if y.start_with?("a", "e", "i", "o", "u")
            y = vowels[vowels.index(y).next]
          elsif y == "u"
                y = "a"
          elsif y == "z"
               y = "b"
          elsif y == " "
                   y = " "
         else
           y = consonants[consonants.index(y).next]
         end
        end

# take the array of letters and combine them into a string, then splits the string into an array of two words.
    alias_name = array_name.join("").split(" ")

    # Select the first and second words in the array and capitalize each word.
	alias_name[0].capitalize!
	alias_name[1].capitalize!

	# Join the capitalized words in the array into a string Insert the real name and alias name into the hash
	alias_name = alias_name.join(" ")

# insert the real name and alias name into the hash
    alias_hash[initial_name] = alias_name

	puts "Please select 'yes' to input another name or 'quit' to display the aliases."
	answer = gets.chomp
end

alias_hash.each do |initial_name, alias_name|
  puts "#{initial_name} is also known as  #{alias_name}"
end
