# 8.5 Combining SQL and Ruby

# Create a program to add your personal favorite movies with rating and comments

require 'sqlite3'
require'faker'

db = SQLite3::Database.new("movies.db")
db.results_as_hash = {}

create_table_cmd = <<-SQL 
CREATE TABLE IF NOT EXISTS movies (
	id INTEGER PRIMARY KEY,
	name VARCHAR(255),
	rating INT,
	comments VARCHAR(255)
	)
SQL

# create a movies table (if it's not there already)
db.execute(create_table_cmd)

# add test movie 
# db.execute("INSERT INTO movies (name, rating, comments) VALUES ('Deadpool', 4, 'Highly entertaining')")