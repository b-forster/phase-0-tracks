class Santa
	attr_accessor :gender, :age, :ethnicity

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

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer_name)
		#Change reindeer_name to last in @reindeer_ranking array
		@reindeer_ranking.delete(reindeer_name)
		@reindeer_ranking.insert(-1, reindeer_name)
		#p @reindeer_ranking
	end

=begin
	def gender
		@gender
	end

	def age=(new_age)
		@age = new_age
	end

	def ethnicity=(new_ethnicity)
		@ethnicity = new_ethnicity
	end

	def gender=(new_gender)
		@gender = new_gender
	end

=end

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
santa2.gender = "male"
santa2.identity
santa2.celebrate_birthday
santa2.age
santa2.get_mad_at("Dancer")
santa2.least_fav_reindeer
santa2.eat_milk_and_cookies("Oreo")


