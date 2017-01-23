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
def add_item (groceries_list, new_item, quantity)
	# add 1 new item to list
	groceries_list.merge!({new_item => quantity})
	# return updated list
	groceries_list
# output: hash
end

# Method to remove an item from the list
# input: item to be removed
# steps:
	# name method and paramentrs
def remove_item(groceries_list, item_to_remove)
	# remove item from list
	groceries_list.delete(item_to_remove)
	# return updated list
	groceries_list
end
# output: hash with item removed


# Method to update the quantity of an item
# input: groceries_list, item (key) input, desired quantity (value) 
# steps:
	# name method and parameters
def update_quantity(groceries_list, item, new_quantity)
	# Change value for inputted key to the desired quantity
	groceries_list [item] = new_quantity
	groceries_list
end
# output: Hash with updated quantity

# Method to print a list and make it look pretty
# input: groceries_list (each key and value can be called from there)
# steps: 
	# name method and parameters
def pretty_list(groceries_list)
	# Print a line of text to lead into the list
	puts "Here is your updated grocery list:"
	# for each key and value in the list, print a string 
	# containing the key and value
	groceries_list.each do |item, quantity|
		puts "#{item}: #{quantity}"
	end
end
# output: printed list

groceries_list = make_list("carrots apples cereal pizza")

p add_item(groceries_list, "lemonade", 2)
p add_item(groceries_list, "tomatoes", 3)
p add_item(groceries_list, "onions", 1)
p add_item(groceries_list, "ice cream", 4)

p remove_item(groceries_list, "lemonade")

p update_quantity(groceries_list, "ice cream", 1)

pretty_list(groceries_list)
