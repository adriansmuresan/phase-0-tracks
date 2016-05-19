# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end

# 	def self.yelling_happily(words)
# 		words + "!!" + ":)"
#     end
#  end


# p Shout.yell_angrily("Uffff")
# p Shout.yelling_happily("Yuhuuuu")

# Release 3

module Shout
	def yell(words)
		puts "He was yelling from the top of his lungs: #{words} "
	end
end

class Yell_angrily
	include Shout
end

class Yelling_happily
	include Shout
end

happy = Yelling_happily.new
happy.yell("I made it!!!")

angry = Yell_angrily.new
angry.yell("You will regret this!!!")
