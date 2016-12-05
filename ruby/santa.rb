
class Santa
	attr_reader :age, :ethnicity, :height, :body_type 	
	attr_accessor :gender


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

	def celebrate_birthday(age)
		@age = age
		if @age == 1
			puts "Happy Birthday!!"
		else
			puts "Maybe next year"
		end
	end

	def change_age(age)
	age = "Age #{age}"
	@age = age
	end

	def get_mad_at(reindeer_name)
		p @reindeer_ranking
		@reindeer_ranking.delete("#{reindeer_name}")
		@reindeer_ranking.push("#{reindeer_name}")
		p @reindeer_ranking
	end

	def speak(times)
		puts "Ho, ho, ho! Happy holidays!" * times
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

end

def shuffle(array)
	array = array.shuffle(random: Random.new)
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

#Deiver code for testing the get_mad_at method
santa = Santa.new("Male", "White", "5ft 8 inches", "Chubby")
santa.get_mad_at("Rudolph")
santa.get_mad_at("Dasher")
#delets the name from the array and then pushes it back into the array. 

#Wrote some driver code to test out a method for changing age.
#santa = Santa.new("Male", "Blue", " 24 inches", "Cute")
#santa.celebrate_birthday(1)
#santa.celebrate_birthday(2)

#Driver code for @gender setter method
#santa = Santa.new("Ditto", "Pink", " 12 inches", "slimy blob")
#santa.gender = "Does it Have One"
#santa.gender = "Not Sure Now"

#Testing refratored Getter Method for @age and @ethnicity
santa = Santa.new("Male", "orange", "5ft", "Stocky with Green hair")
p santa.age
p santa.ethnicity
#Now testing my code with addr_accessor for @gender
p santa.gender
santa.gender = "Now its different"
p santa.gender
#works great

=end
#driver code for random age generator
#santa = Santa.new("Ditto", "Pink", " 12 inches", "slimy blob")
#santa.change_age(Random.rand(0...140))
#p santa.age

santa_array = []
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
genders = shuffle(genders)
#p genders
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
ethnicities = shuffle(ethnicities)
#p ethnicities
height = ["6 ft", "5 ft", "5 ft 11 inches ", "Not Sure", "Mysterious", "7 ft", "11 ft" ]
height = shuffle(height)
#p height
body_type = ["slim", "big boned", "stocky", "confused", "Not Telling", "flexible", "Hard to say" ]
body_type = shuffle(body_type)
#p body_type
genders.length.times do |i|
santa = Santa.new(genders[i], ethnicities[i], height[i], body_type[i])
#Used a random number generator for age
santa.change_age(Random.rand(0...140))
p "Gender: #{santa.gender}, Ethnicity: #{santa.ethnicity}, Height: #{santa.height}, Body Type: #{santa.body_type}, #{santa.age}"
p ''
end