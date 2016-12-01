=begin
class TodoList
	def initialize(array)
		@items = array
	end

	def get_items
		@items
	end

	def add_item(chore)
		@items.push(chore)
	end

	def delete_item(chore)
		@items.delete(chore)
	end

	def get_item(location)
		@items[location]
	end
end
=end

#refactored code
class TodoList

 attr_reader :get_items

 def initialize(array)
   @get_items = array
 end

 def add_item(chore)
   @get_items.push(chore)
 end

 def delete_item(chore)
   @get_items.delete(chore)
 end

 def get_item(location)
   @get_items[location]
 end

end