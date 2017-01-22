class TodoList

	def initialize(list)
	@list = list
	end

	def get_items
		p @list
	end

	def add_items(task)
		@list.push(task)
	end

	def delete_items(task)
		@list.delete(task)
		@list
	end

	def index(num)
		@list[num]
	end
end

# DRIVER CODE

#list = TodoList.new(["do the dishes", "mow the lawn"])

#list.get_items

#p list.add_items("mop")

#p list.delete_items("do the dishes")

#p list.index(1)