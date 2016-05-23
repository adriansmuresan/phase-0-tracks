#GPS 2.2
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Break list into array.  
  # set default quantity =1
  # Create empty hash 
  # Iterate through array with .each 
  # print the list to the console [can you use one of your other methods here?]
# output: [hash]

# Method to add an item to a list
# input: item name and optional quantity
# steps: insert item and quantity
# output: updated hash

# Method to remove an item from the list
# input: updated hash 
# steps: remove item and quantity
# output: updated hash_2

# Method to update the quantity of an item
# input: updated hash_2, item, value
# steps: replace item with item and new value
# output: hash_3

# Method to print a list and make it look pretty
# input: hash 
# steps: translate each value and key to a string 
# output: string 


def create_list(item)
	grocery_list= item.split(" ")
	grocery_hash = {}
	grocery_list.each do |item|
		grocery_hash[item]=1
	end
	return grocery_hash
end
#p create_list("carrots apples cereal pizza")


def add_item(item,quantity,grocery_hash)
	grocery_hash[item]= quantity
	grocery_hash
end

list = create_list("carrots apples cereal pizza")
p list
list = add_item("strawberry","5", list) 
p list

def remove_item(item, grocery_hash)
	grocery_hash.delete(item)
	grocery_hash
end

list = remove_item("carrots", list)
p list

def update_quantity(item, quantity, grocery_hash)
	grocery_hash[item]=quantity
	grocery_hash
end

list = update_quantity("apples","5",list)
p list

def print_list(grocery_hash)
	puts "Your grocery list:"
	grocery_hash.each do |item,quantity|
		puts "You have #{item} - #{quantity}."
	end
end

print_list(list)

=begin
Add the following items to your list
Lemonade, qty: 2
Tomatoes, qty: 3
Onions, qty: 1
Ice Cream, qty: 4
=end

list = add_item("lemonade","2", list) 
p list
list = add_item("tomatoes","3", list) 
p list
list = add_item("onions","1", list) 
p list
list = add_item("ice cream","4", list) 
p list
list = remove_item("lemonade", list)
p list
list = update_quantity("ice cream","1",list)
p list
		
print_list(list)


list = add_item("strawberry","10", list) 
p list

list = update_quantity("bananas","5",list)
p list

#=======================================
# Release 5: Reflect
# On your own, add a commented reflection section to your gps2_2.rb file. Answer the following questions in your reflection:
#
# What did you learn about pseudocode from working on this challenge? Pseudocode is more important then I thought, I still new to work on it and it makes coding  much easier.
# What are the tradeoffs of using arrays and hashes for this challenge? It this case it was easier to use a hash since we had 2 atributes to work with , the grocery item and the quatity of the grocery item, the value.
# What does a method return? It returns the last line of code in the method.
# What kind of things can you pass into methods as arguments? You can pass strings, integers, arrays, hashes
# How can you pass information between methods? We can pass information between methods by assigning a variabile outside of that method (list = create_list)
# What concepts were solidified in this challenge, and what concepts are still confusing? It's clearer the way we can pass information between methods, but I still need work in pseudocoding and refactoring, and not shure when to use return.

