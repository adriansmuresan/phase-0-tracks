# 6.4 Solo Challenge: Designing and Implementing a Class

# Design (as opposed to actually building) a class representing anything you like.
# (Please make it something we have at least heard of.)
# Whether you want to build a fire-breathing dragon, a dress, or a soccer ball, we hereby grant you the freedom to implement it.
# No matter what you design, your class must have:
# at least three attributes (using at least two data types) whose values will vary from instance to instance (example: age)
# at least three methods, at least one of which takes an argument
# You're welcome to be creative about these: a dress can have a swish method, a soccer ball can have an inflatedness attribute,
# and ... we hope it's obvious what a fire-breathing dragon can do, but if not, you'll figure it out.

# Class Movies
# Attributes:
   # age
   # genres: action, adventure, drama, romance, comedy, westerns, thrillers
   # name
   # popcorn
# Methods
   # A method that verifies the age
   # A method that chouses a random genres
   # A method that asks the user if he whants popcorn

class Movies
  attr_reader :genres
  attr_accessor :age, :name

  def initialize(name, age)
    puts "Movies are fun!"
    @name = name
    @age = age
    @genres = ["action", "adventure", "drama", "romance", "comedy", "western", "thriller"]
  end

  def age_verification
    if @age >= 16
      puts "Ennjoy the screening of this movie!"
    else
      puts "We are sorry but this movie is not suitable for you at this time!"
    end
  end

  def random_movie
    puts "#{@name} today  you are going to be screening a/an #{@genres.sample}!"
  end

  def popcorn(flavor)
    puts "#{@name} for your pleasure this screening comes with complementary popcorn #{flavor}!"
  end

  def user_data
    puts "#{@name} you are #{age} years old and you have just watched a/an #{@genres.sample}! Please come again!"
  end
end

# driver code
# movie = Movies.new("adrian", 34)
# puts "What flavor popcorn do you want"
# choice = gets.chomp
# puts movie.popcorn(choice)
# p movie.age
# p movie.name
# p movie.age_verification
# p movie.random_movie
# p movie.popcorn(choice)

#  Modify your program so that it has a user interface (a user can interact with your program via the command line).
#  Your user should be allowed to create as many instances of your class as they like.
#  Prompt the user for each attribute, and don't forget to convert their input to the appropriate data type.
#  Store these class instances in an array.
#  When the user indicates that they are finished creating instances,
#  loop through the array and print out the attributes of each instance as a confirmation message of what was created.

# User interface

movies_array = []
puts "Would you like to see a movie screening today?(yes/no)?"
answer = gets.chomp
   if answer == "yes"
          until answer == "no"
            puts "How many movie screenings would you like to see?"
                nmbr_of_screenings = gets.chomp.to_i
                nmbr_of_screenings.times do
                  puts "Please enter your name:"
                       @name = gets.chomp.capitalize.to_s
                  puts "Please enter your age:"
                       @age = gets.chomp.to_i
                  movies_array << Movies.new(@name,@age)
                end
                  puts "Would you like to see another movie?(yes/no)"
                 answer = gets.chomp
                end
           else
            puts "Maybe next time!"
      end

puts "---------------------------------------------------"
movies_array.each do |movie|
  movie.user_data
end
