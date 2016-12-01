
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

santa = Santa.new("Male", "White")

santa.speak(2)
santa.eat_milk_and_cookies("Snickerdoodle")