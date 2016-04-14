#What is your name? Some known vampires are in the area, and we can check against the Werewolf Intelligence Bureau database for their aliases.
#How old are you? What year were you born? This is to try to trick the vampire, who is likely several hundreds of years old. If an employee gives an age and a year of birth that don’t line up mathematically, that employee might be a vampire.
#Our company cafeteria serves garlic bread. Should we order some for you? Vampires hate garlic. Do not even get a vampire started on garlic. Invite a vampire to an Italian restaurant even one time, and you’ll never hear the end of it.
#Would you like to enroll in the company’s health insurance? Vampires are immortal, so they certainly don’t need health insurance.

puts "What is your name?"
name = gets.chomp.capitalize
if name == "Drake Cula" || "Tu Fang"
	puts "Definetly a vampire."
	end

puts "How old are you?"
age = gets.chomp.to_i

puts "What year where you born?"
born_year = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you?(y/n)"
garlic_response = gets.chomp.downcase

garlic_answer = if garlic_response  == 'y'
                  true
                else
                  false
                end

puts "Would you like to enroll in the company’s health insurance?(y/n)"
insurance_response = gets.chomp.downcase

insurance_answer = if insurance_response == 'y'
                  true
                else
                  false
                end

current_year = age.to_i + born_year.to_i

if (current_year.to_i == '2016' && answer_1 == "y") || answer_2 == "y"
	puts 'Probably not a vampire.'
elsif (current_year.to_i != '2016' && answer_1 == "n") || answer_2 == "n"
  puts "Probably a vampire."	
elsif (current_year.to_i != '2016' && answer_1 == 'n') && answer_2 == 'n'
	puts 'Almost certainly a vampire.'

else 
	puts "Results inconclusive."
end





name = 'Andrew'
age = 16
born_year = 2000 
garlic_answer = false 
insurance_answer = false
current_year = age + born_year



#     If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
#     If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
#     Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
#     Otherwise, print “Results inconclusive.”


if (current_year == 2016 && (garlic_answer || insurance_answer))
  puts 'Probably not a vampire.'
elsif ((current_year == 2016 && garlic_answer )|| insurance_answer)
	puts "Probably a vampire."
elsif current_year
		
else
  puts 'Results inconclusive'
end


		