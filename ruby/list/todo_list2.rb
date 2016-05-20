class TodoList
​
	def initialize(array)
		@todolist = array
	end
​
	def get_items
		@todolist
	end
​
	def add_item(item)
		@todolist.push(item)
	end
​
	def delete_item(item)
		@todolist.delete(item)
	end
​
	def get_item(num)
		@todolist[num]
	end
end