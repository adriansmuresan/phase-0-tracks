#6.3 Attributes

class Santa
  def initialize(gender,ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    puts "Initializing Santa instance..."
  end

  def speak
    puts "This santa who is #{@gender} and #{@ethnicity} greeets you:"
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type,reindeer_ranking)
    @reindeer_ranking = reindeer_ranking
    puts "#{reindeer_ranking} expresses his opinion about the cookie: "
    puts "That was a good #{cookie_type}."
  end
# three attribute-changing methods to your Santa class
  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking << (reindeer_name)
   end
# setter method
   def gender=(new_gender)
     @gender = new_gender
   end

# getter methods
   def age
     @age
   end

   def ethnicity
     @ethnicity
   end

end

#Driver code==========
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
# santa.eat_milk_and_cookies("gingerbread", "Rudolph")

santas = []

santas << Santa.new("agender","Latino")
santas << Santa.new("bigender", "White")
santas << Santa.new("male", "South Arfican")
santas << Santa.new("gender fluid", "British")

santas.each do |santa|
	puts santa.celebrate_birthday
end

santas.each do |santa|
	puts santa.get_mad_at("Vixen")
end

santas.each do |santa|
puts	santa.gender=("N/A")
end

santas.each do |santa|
	puts santa.age
	puts santa.ethnicity
end
