
class Santa

	def initialize(gender, ethnicity)
		#puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@reindeer_ranking = reindeer_ranking
		age = 0
		@age = age
		puts "#{gender}, #{ethnicity}, #{age}, #{reindeer_ranking}"
	end

	def speak(times)
		puts "Ho, ho, ho! Happy holidays!" * times
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

end

=begin
#Driver Code
santa = Santa.new("Male", "White")

santa.speak(2)
santa.eat_milk_and_cookies("Snickerdoodle")
p ''

santa = []
santa << Santa.new("agender", "black")
santa << Santa.new("female", "Latino")
santa << Santa.new("bigender", "white")
santa << Santa.new("Male", "Japanese")
santa << Santa.new("female", "prefer not to say")
santa << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santa << Santa.new("N/A", "N/A")

p santa
=end

