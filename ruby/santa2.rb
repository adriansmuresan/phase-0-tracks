# 6.3 Attributes
class Santa
  def initialize
    puts "Initializing Santa instance ..."
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end
end

david = Santa.new
david.speak
david.eat_milk_and_cookies("snickerdoodle")
