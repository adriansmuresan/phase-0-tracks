# -define a method called encrypt with the paramether of a string

#- set a variable named counter equal to 0
#- use a loop - while counter is less than string.lenght
#- call each letter of string and advance it one letter
#- increment the counter by one
#- end the loop 
#- print the results
#- end the method

#- define a method called decrypt with a paramether of a string
#- declare a variable that equals the alphabet
#- set a counter
#- do another loop- while the counter is less that the string lenght 
#- find where each letter of each string is located in the alphabet then move one letter back
#- end the loop
#- print the results
#- end the method

def encrypt(string)
    counter = 0
    while counter < string.length
        if string[counter] == "z"
            string[counter] = "a"
        else
            string[counter] = string[counter].next
        end
        counter += 1
    end
    p string
end

def decrypt(string)
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    counter = 0
    while counter < string.length
        alphabet_num = alphabet.index(string[counter])
        string[counter] = alphabet[alphabet_num - 1]
        counter += 1
    end
    p string
end

encrypt("abc") 
encrypt("zed")
decrypt("bcd")
decrypt("afe")
decrypt(encrypt("swordfish"))
# Method evaluates encrypted first because it is 
# located in the parentheses within the decrypt
# method

puts "Would you like to encrypt or decrypt a password?"
answer = gets.chomp

puts "What is your password?"
password = gets.chomp

if answer == "encrypt"
    puts "Your password is #{encrypt(password)}."
elsif answer == "decrypt"
    puts "Your password is #{decrypt(password)}."
else
    puts "Invalid input."
end