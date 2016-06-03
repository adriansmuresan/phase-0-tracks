# Operation puppy explosion!

# talk about Object Relational Mapping (ORM)

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("puppyes.db")
db.results_as_hash = {}

# learn about fancy string delimiters
create_table_cmd = <<-SQL
CREATE TABLE IF NOT EXISTS puppyes (
	id INTEGER PRIMARY KEY,
	name VARCHAR(255),
	age INT
)
SQL

# create a puppyes table (if it's not there already)
db.execute(create_table_cmd)

# add a test puppy
# db.execute("INSERT INTO puppyes (name, age) VALUES ('Joe', 5)")



# add LOOOOTS of puppyes!
# so. many. puppyes. 
#PuppyExplosion

def create_puppy(db, name, age)
	db.execute("INSERT INTO puppyes (name, age) VALUES(?, ?)", [name, age])
end

100.times do
	create_puppy(db,Faker::Name.name , 2)
end


# explore ORM by retrieving data
# puppyes = db.execute("SELECT * FROM puppyes")
# puppyes.each do |puppy|
#  puts "#{puppy['name']} is #{puppy['age']}"
# end
