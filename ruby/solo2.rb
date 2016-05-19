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
  attr_accessor :age, :name, :popcorn

  def initialize(name, age)
    puts "We have a few movie screenings for you today!"
    @name = name
    @age = age
    @genres = ["action", "adventure", "drama", "romance", "comedy", "westerns", "thrillers"]
    @popcorn = popcorn
  end

  def age_verification
    if @age >= 16
      puts "Ennjoy the screening of this movie!"
    else
      puts "We are sorry but this movie is not suitable for you at this time!"
    end
  end

  def random_movie
    puts "#{name} today  you are going to be screening a/an #{@genres.sample}!"
  end

  def popcorn
    puts "#{name} for your pleasure this screening comes with complementary popcorn!"
  end
end
# driver code
movie = Movies.new("adrian", 12)
p movie.age
p movie.name
p movie.age_verification
p movie.random_movie
p movie.popcorn
