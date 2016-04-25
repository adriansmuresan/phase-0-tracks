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
#
#Dclare the vowels and consonants
$vowels = "aeiou"
$consonants = "bcdfghjklmnpqrstvwxyz"


#Define a method to reverse(swap) the name
def swap_name (name)
     name = name.downcase
     name = name.split(' ')
     swap_name = name.reverse
  #   p swap_name
#convert a string(name) into an array
  array_name = swap_name.join(" ").split("")
#transform array into a string
  array_name_string = array_name.join("")
  return array_name_string
end

#create alias name
def create_alias(array_name_string)
     alias_name = []
     counter = 0
     while counter < array_name_string.length
# find vowels in array_name_string
       letter = array_name_string[counter]
       if $vowels.include?(letter)
         if letter == "u"
           alias_name.push("a")
         else
           vowels_index = $vowels.index(letter)
           alias_name.push($vowels[vowels_index +1])
         end
       elsif letter == " "
         alias_name.push(" ")
       else
# find consonants in array_name_string
         if letter == "z"
           alias_name.push("b")
         else
           consonant_index = $consonants.index(letter)
           alias_name.push( $consonants[consonant_index + 1])
         end
       end
      counter += 1
     end
#capitalize
     return  alias_name.join("").split(" ").each{|x| print x.capitalize, " "}

end

loop do
     print "\nPlease enter a  name. Type 'quit' when you want to exit.\n"
     name = gets.chomp
     if name == "quit"
       puts "Thank you, come back again!\n"
       break
     else
       puts "Fake name :"
       create_alias( swap_name(name) )
     end
end
