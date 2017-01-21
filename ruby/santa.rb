class Santa
	def initialize(gender, ethnicity)
		@reindeer_ranking = 
			["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		@gender = gender
		@ethnicity = ethnicity
		puts "Initializing Santa instance ..."
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!" 
	end

	def identity
		puts "I identify as a #{@gender}, #{@ethnicity} Santa."
	end

	def age
		puts "I may not look it, but I'm #{@age} years old!"
	end

	def least_fav_reindeer
		puts "My least favorite reindeer is definitely #{@reindeer_ranking[-1]}."
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end
end

# DRIVER CODE

santa1 = Santa.new("omnigender","pan-ethnic")

santa1.speak
santa1.identity
santa1.age
santa1.least_fav_reindeer
santa1.eat_milk_and_cookies("chocolate chip cookie")
puts "------"

santa2 = Santa.new("female","humanoid")

santa2.speak
santa2.identity
santa2.age
santa2.least_fav_reindeer
santa2.eat_milk_and_cookies("Oreo")


