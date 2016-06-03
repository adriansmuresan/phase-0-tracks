# Operation puppy explosion!

# talk about Object Relational Mapping (ORM)

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("puppyes.db")

# learn about fancy string delimiters

# create a puppyes table (if it's not there already)

# add a test puppy
# db.execute("INSERT INTO puppyes (name, age) VALUES ('Joe', 5)")

# add LOOOOTS of puppyes!
# so. many. puppyes. 
#PuppyExplosion

# explore ORM by retrieving data
# puppyes = db.execute("SELECT * FROM puppyes")
# puppyes.each do |puppy|
#  puts "#{puppy['name']} is #{puppy['age']}"
# end
