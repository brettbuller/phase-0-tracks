class TodoList
	def initialize(array)
		@list = array
	end

	def get_items
		@list
	end

	def add_item(item)
		@list << item
	end

	def delete_item(item)
		@list.delete(item)
	end

	def get_item(num)
		@list[num]
	end
end


list1 = TodoList.new([])
list1.add_item("wash dog", "laundry. so much dirty")
puts list1

