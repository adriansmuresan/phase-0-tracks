# 6.2 Mandatory Pairing: Instance Methods

# initialize a Puppy class
# add methods to the class and call them in driver code

class Puppy
	def initialize
		puts "Initializing new puppy instance..."
	end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(integer)
  	integer.times do |i|
  		puts "Woof!"
  	end
  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(integer)
  	p integer * 7
  end

  def shake_paw(x)
  	x.times do |i|
  	puts "*shakes paw*"
  end
  end

end
#Driver Code
fido = Puppy.new
fido.fetch("bone")
fido.speak(5)
fido.roll_over
fido.dog_years(7)
fido.shake_paw(3)

# Release 2===============================================
# initialize a class of our choosing
# create 50 instances of the class and store them in an array
# iterate through the array and call the methods for the class.
class Extreme_Sports
	def initialize
		puts  "Extreme sports are fun!"
	end
	def refuel(string)
		puts "Drinks #{string}!"
	end
	def jump(y)
		y.times {puts "Jumps with excitement!"}
	end
end
surfing = Extreme_Sports.new
surfing.refuel("Red bull")
surfing.jump(3)

sports_array = []

counter = 0
#make 50 instances of the class
while counter < 50
	mountain_climbing = Extreme_Sports.new
	sports_array.push(mountain_climbing)
	counter += 1
end
# p sports_array
sports_array.each do |x|
	x.refuel("Coffe")
	x.jump(5)
end
