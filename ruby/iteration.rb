#Release 0

def greeting
	puts "Hi!"
	yield("Brianna" , "Tyler")
end

greeting {|name1, name2| puts "Our names are #{name1} and #{name2}."}


#Release 1

Amazon_categories = ["Electronics", "Books", "Clothing"]

Amazon_categories.each{|category| puts category}
p Amazon_categories

Amazon_categories.map!{|category| puts "Shop in the #{category} category"}
p Amazon_categories

fruit_colors ={
banana: "yellow",
strawberry: "red",
orange: "orange"
}

fruit_colors.each{|fruit, color| puts "A #{fruit} is #{color}"}
p fruit_colors


#Release 2

#1. A method that iterates through the items, deleting any that meet a certain condition
#(for example, deleting any numbers that are less than 5).

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

numbers.delete_if {|number| number < 5}
p numbers


numbers = {
	a: 1,
	b: 2,
	c: 3,
	d: 4,
	e: 5,
}

numbers.delete_if {|letter, number| number < 5}
p numbers


#2. A method that filters a data structure for only items that do satisfy a certain condition
#(for example, keeping any numbers that are less than 5).

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

numbers.keep_if{|number| number < 5}
p numbers


numbers = {
	a: 1,
	b: 2,
	c: 3,
	d: 4,
	e: 5,
}

numbers.keep_if{|letter, number|number <5}
p numbers

#3. A different method that filters a data structure for only items satisfying a 
#certain condition -- Ruby offers several options!

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

numbers.select!{|number| number < 5}
p numbers


numbers = {
	a: 1,
	b: 2,
	c: 3,
	d: 4,
	e: 5,
}

numbers.select!{|letter, number|number <5}
p numbers


#4 A method that will remove items from a data structure until the condition
#in the block evaluates to false, then stops (you may not find a perfectly working
#option for the hash, and that's okay).

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
new_numbers = numbers.take_while {|number| number < 5}
p new_numbers
