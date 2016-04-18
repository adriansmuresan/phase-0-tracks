
puts "How many employees will be processed?"
employee_number = gets.chomp.to_i

#looping through the survey
employee_counter = 0
until employee_counter == employee_number

#  What is your name? Some known vampires are in the area, and we can check against the Werewolf Intelligence Bureau database for their aliases.
#  How old are you? What year were you born? This is to try to trick the vampire, who is likely several hundreds of years old. If an employee gives an age and a year of birth that don’t line up mathematically, that employee might be a vampire.
#  Our company cafeteria serves garlic bread. Should we order some for you? Vampires hate garlic. Do not even get a vampire started on garlic. Invite a vampire to an Italian restaurant even one time, and you’ll never hear the end of it.
#  Would you like to enroll in the company’s health insurance? Vampires are immortal, so they certainly don’t need health insurance.

   puts "What is your name?"
     name = gets.chomp.capitalize
    
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

current_year = age + born_year

#Check for Suspicious Allergies
    puts "Do you have any allergies? Enter one at a time and enter 'done' when finished."
      allergy = gets.chomp
       until allergy == "done"
         if allergy =="sunshine"
           puts "Probably a vampire."
           allergy = "done"
         else
          allergy = gets.chomp
         end
       end
        
#     If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
#     If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
#     If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
#     Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
#     Otherwise, print “Results inconclusive.”


      if (current_year == 2016 && (garlic_answer || insurance_answer))
        puts "Probably not a vampire."
      elsif (current_year != 2016) && (garlic_answer || insurance_answer)
	      puts "Probably a vampire."
      elsif (current_year != 2016) && garlic_answer && insurance_answer
		    puts "Almost certainly a vampire."
      elsif (name == "Drake Cula" || name == "Tu Fang")
        puts "Definetly a vampire."
      else
        puts "Results inconclusive"
      end
# Increase the counter of empoyees 
      employee_counter += 1

end

puts "Actually,never mind! What do these questions have to do with anything? Let's all be friends."


