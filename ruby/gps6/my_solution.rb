# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#require_relative: refers to another file in same directory
#require: doesn't have to be in same directory
require_relative 'state_data'

class VirusPredictor
#initializing with 3 parameters state_of_origin, population_density and population.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#This calls two other methods predicted deaths and speed of spread.


  def virus_effects
    predicted_deaths #(@population_density, @population, @state)
    # speed_of_spread #(@population_density, @state)
  end


private

# This takes in population_density, population, and state and outputs a number which is the predicted deaths. 
  def predicted_deaths #(population_density, population, state)
    # predicted deaths is solely based on population density
    speed = 0.0
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
      speed += 0.5
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
      speed += 1
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
      speed += 1.5
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
      speed += 2
    else
      number_of_deaths = (@population * 0.05).floor
      speed += 2.5
    end

    puts"#{@state} will lose #{number_of_deaths} people in this outbreak and will spread across the state in #{speed} months.\n\n"
  end

=begin

  # This takes in population_density, state, and it outputs a speed , it starts at 0.0
  def speed_of_spread #(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

=end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

=begin

alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

=end

STATE_DATA.each do |state, data|
   state_virus = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
   #state_virus.virus_effects
   state_virus.virus_effects
end



# p STATE_DATA

#=======================================================================
# Reflection Section

=begin
  
- What are the differences between the two different hash syntaxes shown in the state_data file?

   One syntax has quotation marks around the key name, followed by '=>'. 
   The other has no quotation marks around they key name, and separates the key and value with ':'.


- What does require_relative do? How is it different from require?

   require_relative allows code in the same directory to be used in the current file.
   require does the same thing, but refers to a file in a different directory, so the path must be provided.


- What are some ways to iterate through a hash?

  You can call call <HASH NAME>.each and set up a block, or you can use a regular loop.


- When refactoring virus_effects, what stood out to you about the variables, if anything?

  The two methods that are called inside virus_effects take almost the same variables as parameters.

- What concept did you most solidify in this challenge?

  I solidified how to use a loop to easily create a large number of class instances.

=end





