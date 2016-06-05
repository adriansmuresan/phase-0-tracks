# 8.5 Combining SQL and Ruby

# Create a program to add your personal favorite movies with rating and comments

require 'sqlite3'

@db = SQLite3::Database.new("movies.db")
@db.results_as_hash = true

create_table_cmd = <<-SQL 
CREATE TABLE IF NOT EXISTS movies (
	id INTEGER PRIMARY KEY,
	name VARCHAR(255),
	rating INT,
	comments VARCHAR(255)
	)
SQL

# create a movies table (if it's not there already)
@db.execute(create_table_cmd)

# add test movie 
# @db.execute("INSERT INTO movies (name, title, comments) VALUES ('Deadpool', 4, 'Highly entertaining')")


# Method to add movies to the database
def add_movies(db, name, rating, comments)
	@db.execute("INSERT INTO movies (name, rating, comments) VALUES(?, ?, ?)", [name, rating, comments] )
end
# Method to see the list of movies in the database
def list_of_movies
	list = @db.execute("SELECT * FROM movies;")
	puts "===List of movies===="
	for i in 0...(list.length)  do
		puts "Name: #{list[i]["name"]} Rating: #{list[i]["rating"]} Comments: #{list[i]["comments"]}"
	end
end
# Method to delete a movie from the database
def delete_movie(db, name)
	@db.execute("DELETE FROM movies WHERE name = '#{name}';")
end

# User interface
def user_interface(db)
	exit = "Exiting, come back again!"
	puts "Welcome to the movies database!"
	puts "Would you like to add a movie to the database?(yes or no)"
	answer = gets.chomp
	if answer == "yes"
		loop do 
			puts "Enter 1 to add a movie with rating and comments"
			puts "Enter 2 to view the list of the movies"
			puts "Enter 3 to delete a movie!"
			puts "Enter 4 to exit"
			input = gets.chomp
			if input == "1"
				puts "Plese enter the name/title of the movie you would like to add"
	               name = gets.chomp
	            puts "Please enter a rating from 1 to 5 for this movie"
	              rating = gets.chomp
	            puts "Please enter additional comments!"
	              comments = gets.chomp
				add_movies(db, name, rating, comments)
			elsif input == "2"
				list_of_movies
			elsif input == "3"
	             puts "Please enter the name of the movie you would like to delete!"
	             name = gets.chomp
				delete_movie(db, name)
			elsif input == "4"
				puts exit
				break
			end
		end
	else answer == "no"
		puts exit
	end
end

user_interface(@db)
			
					
						
						














