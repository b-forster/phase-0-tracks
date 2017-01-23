# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # name the method and argument

 def make_list(groceries)
  # define a hash
    # set default quantity to 1

    groceries_array = groceries.split(" ")
 	groceries_list = Hash.new
 	groceries_array.each do |item|
 		groceries_list[item] = 1	
 	end
  	  # print the list to the console [can you use one of your other methods here?]
#  output: hash
	p groceries_list	
 end


# Method to add an item to a list
# input: groceries_list, new item to add
# steps: 
	# name method and parameters
def add_item (groceries_list, new_item)
	# add 1 new item to list
	groceries_list.merge!({new_item => 1})
	# print updated list
	p groceries_list
# output: hash
end


groceries_list = make_list("carrots apples cereal pizza")

add_item(groceries_list, "nutella")

# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output: