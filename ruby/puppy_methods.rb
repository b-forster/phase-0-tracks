=begin

# Puppy class

class Puppy
	def initialize
		p "Initializing new puppy instance ..."
	end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number)
  	number.times{puts "Woof!"}
  end

  def roll_over
  	p "*rolls over*"
  end

  def dog_years(years)
  	dog_years = years * 7
  	puts "Your dog is #{dog_years} years old in dog years."
  	dog_years
  end

  def sit
  	p "Sit, doggie!"
  end
end


# DRIVER CODE

spot = Puppy.new

spot.fetch("ball")

spot.speak(4)

spot.roll_over

spot.dog_years(2)

spot.sit

=end

# Cat class

class Cat
	def initialize
		p "Hey, I like cats!"
	end

	def number_of_cats(number)
		p "I have #{number} cats."
	end

	def chase_item(item_name)
		p "My cats like to chase #{item_name}."
	end

end

# DRIVER CODE

fluffy = Cat.new

fluffy.number_of_cats(6)

fluffy.chase_item("string")



