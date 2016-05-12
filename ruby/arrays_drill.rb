#Challenge 5.2 

# At the top of your file, add a method that takes three items as parameters and returns an array of those items. So build_array(1, "two", nil) would return [1, "two", nil].
# This won't take much code, but the syntax might feel a bit odd. At the bottom of the file, call the method to show that it works.
def build_array(item1, item2, item3)
  ary4 = [item1, item2, item3]
  p ary4
end

# At the top of your file, add a method that takes an array and an item as parameters, and returns the array with the item added.
# So add_to_array([], "a") would return ["a"], and add_to_array(["a", "b", "c", 1, 2], 3) would return ["a", "b", "c", 1, 2, 3].
# Print a few test calls of the method.


def add_to_array(array_2, new_item)
  ary4 = array_2.push new_item
  p ary4
end

#initialize an empty array and print array
ary1 = []
p ary1

#add 5 items to your array and print array
ary1 = ["yarn", "stuffed mouse", "laser pointer", "headphone cord", "shoelace"]
p ary1

#delete the item at index 2
ary1.delete_at(2)
p ary1

#insert new item at index
ary1.insert(2, "new item")
p ary1

#remove the first item in the array without having to refer to the index
ary1.shift
p ary1

#ask the array whether it include a certain item
if ary1.include?("new item")
    puts "This array includes the string 'new item'"
else
    puts "This array doesn't include the string 'new item'"
end

#Initialize another array that already has a few items in it.
ary2 = ["item1", "item2", "item3"]

#add two arrays together and store in a new variable
ary3 = ary1 + ary2
p ary3

#other option to add the two arrays together
ary3 = ary1.concat ary2
p ary3

build_array(1, "two", nil)

add_to_array(["a", "b", "c", 1, 2], 3)

add_to_array([], "a")

add_to_array([1,2,3], 3)
add_to_array(["red", "blue", "yellow"], "orange")
