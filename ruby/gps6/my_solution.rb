# Virus Predictor

# I worked on this challenge [by myself, with: James Wilson].
# We spent [1.25] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require 'pry'
require_relative 'state_data'

class VirusPredictor
#Pulls in Data from state_data and initializes some instance variables
 def initialize(state_of_origin, population_density, population)
   @state = state_of_origin
   @population = population
   @population_density = population_density
 end

#Call upon the methods in the private methods: predicted_deaths and speed_of_spread
 def virus_effects
   predicted_deaths
   speed_of_spread
 end

 private
#Runs some if statements comparing population  with number of potential deaths
 def predicted_deaths
   # predicted deaths is solely based on population density

   death_factor = 0.05
   case @population_density
   when (200..10000000000) then death_factor = 0.4
   when (150..199) then death_factor = 0.3
   when (100..149) then death_factor = 0.2
   when (50..99) then death_factor = 0.1
   end

=begin
   if @population_density >= 200
     death_factor = 0.4
     # number_of_deaths = (@population * 0.4).floor
   elsif @population_density >= 150
     death_factor = 0.3
     #number_of_deaths = (@population * 0.3).floor
   elsif @population_density >= 100
     death_factor = 0.2
     # number_of_deaths = (@population * 0.2).floor
   elsif @population_density >= 50
     death_factor = 0.1
     # number_of_deaths = (@population * 0.1).floor
   else
     death_factor = 0.05
     # number_of_deaths = (@population * 0.05).floor
   end
=end
   print "#{@state} will lose #{(@population * death_factor).floor} people in this outbreak"

 end
#Uses population desity to determine speed of spread using if statements
 def speed_of_spread #in months
   # We are still perfecting our formula here. The speed is also affected
   # by additional factors we haven't added into this functionality.
   speed = 0
   case @population_density
   when (200..10000000000) then speed = 0.5
   when (150..199) then speed = 1
   when (100..149) then speed = 1.5
   when (50..99) then speed = 2
   else
     speed = 2.5
   end
   # binding.pry


=begin
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
=end
   puts " and will spread across the state in #{speed} months.\n\n"

 end

end

#=======================================================================

# DRIVER CODE
# initialize VirusPredictor for each state

STATE_DATA.each do |state, population_data|
 state = VirusPredictor.new(state, population_data[:population_density], population_data[:population])
 state.virus_effects
end

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


#=======================================================================
# Reflection Section

#What are the differences between the two different hash syntaxes shown in the state_data file?
  #The hash uses strings for the state names as keys and then symbols for the population density and population

#What does require_relative do? How is it different from require?
  #require_relative pulls in another file normally from the same directory. You cao use this to pull in data, classes or modules.
  #require is used to load in files like gems to be used in your program. In this case we used 'pry'

#What are some ways to iterate through a hash?
  #Calling .each has been the simple way that I am currently use to but from my reading I may be able to use .sort to perform a similar function

#When refactoring virus_effects, what stood out to you about the variables, if anything?
  #virus_effects was not refractorted but the methods it called upon are. Alot of the code was repeated and was able to be shorted quite a bit
  #James wrote the case statements that we used to refratored the code and it worked very well. I will note that case statements had issues with
  #greater than or less than and we had to use a range instead. using 'pry' was useful hear because we were having issues with our return.

#What concept did you most solidify in this challenge?
  #This challenge helped me figure out what refratoring really means. The Acronym 'DRY' helped me understand it a lot better. If you find yourself
  #repeating code over and over again, look for a way for you not to repeat yourself. The case statements above are a good example.

