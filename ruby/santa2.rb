# 6.3 Attributes
class Santa
  def initialize(gender,ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    puts "Initializing Santa instance ..."
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end
end
# Driver code
# santa = Santa.new
# santa.speak
# santa.eat_milk_and_cookies("snickerdoodle")

# santa = Santa.new("agender", "latino")
# santa.speak
# santa = Santa.new("agender", "black")
# santa.speak
# santa = Santa.new("female", "Latino")
# santa.speak
# santa = Santa.new("bigender", "white")
# santa.speak
# santa = Santa.new("male", "Japanese")
# santa.speak
# santa.eat_milk_and_cookies("gingerbread")

 santas = []

 santas << Santa.new("agender", "black")
 santas << Santa.new("female", "Latino")
 santas << Santa.new("bigender", "white")
 santas << Santa.new("male", "Japanese")
 santas << Santa.new("female", "prefer not to say")
 santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
 santas << Santa.new("N/A", "N/A")
 p santas
