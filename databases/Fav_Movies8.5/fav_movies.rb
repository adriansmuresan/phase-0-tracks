# Create a program to add your personal afvorite movies with rating and comments

require 'sqlite3'
require'faker'

db = SQLite3::Database.new("movies.db")
