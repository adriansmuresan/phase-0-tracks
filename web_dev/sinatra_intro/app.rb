# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# Update it with the following:

# A /contact route that displays an address (you can make up the address).

get '/contact/:address' do
  address = params[:address]
  "He lives at this address: #{params[:address]}"
end

# A /great_job route that can take a person's name as a query parameter 
# (not a route parameter) and say "Good job, [person's name]!". 
# If the query parameter is not present, the route simply says "Good job!"

get '/great_job/' do
  name = params[:name]
  if name
    "Good job, #{params[:name]}!"
  else
    "Good job!"
  end
end

# A route that uses route parameters to add two numbers and respond with the 
# result. The data types are tricky here -- when will the data need to be 
# (or arrive as) a string? 

get '/:number1/plus/:number2' do
  first = params[:number1]
  second = params[:number2]
  result = (first.to_i + second.to_i).to_s
  result
end




