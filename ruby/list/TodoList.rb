class TodoList

attr_accessor :list  
	
	def initialize (string)
		@list = string
	end

	def get_items 
		@list	
	end

	def add_item(item)
		@list << item
	end

	def delete_item(delete_item)
		@list.delete(delete_item)
	end

	def get_item(i)
		@list[i]
	end

end




