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

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking << reindeer_name
  end
  # Setter method
  def gender=(new_gender)
    @gender = new_gender
  end

  # Getter methods
  def age
    @age
  end
  def ethnicity
    @ethnicity
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

santas.each do |santa|
  puts santa.celebrate_birthday
end

santas.each do |santa|
  puts santa.get_mad_at("Vixen")
end

santas.each do |santa|
  santa.gender=("bigender")
end

santas.each do |santa|
  puts santa.age
end

santas.each do |santa|
  puts santa.ethnicity
end
