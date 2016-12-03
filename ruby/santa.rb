
class Santa

	def initialize(gender, ethnicity, height, body_type)
		#puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@age = 0
		@height = height
		@body_type = body_type
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		
		#puts "#{@gender}, #{@ethnicity}, #{@age}, #{height}, #{body_type}, #{@reindeer_ranking}"
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

santa_array = []
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
height = ["6 ft", "5 ft", "5 ft 11 inches ", "Not Sure", "Mysterious", "7 ft", "11 ft" ]
body_type = ["slim", "big boned", "stocky", "confused", "Not Telling", "flexible", "Hard to say" ]
genders.length.times do |i|
  santa_array << Santa.new(genders[i], ethnicities[i], height[i], body_type[i])
 p ''
 p santa_array[i]
end




