#Create a Class to contain the game core methods
#Make five attr_accessor: one for the the secret word, one for the guess, one for the count, and one for total attempts allowed, and the array
#Make an initialzing method that assigns default values to attributes. 
# Create a simple method for comparing the guess with the secret word
# create a method that will store the previous answer in an array and compare to determine if the user repeated an answer
	#If an aswer was repeated do not add to the count. Otherwise add to the count for each attempted answer
# Create a method for checking if the count and total attempts are equal to each other. 
	#If equal print game over 


class Guessing_game
	attr_accessor :guess, :secret_word, :count, :total_attempts, :array

	def initialize(secret_word)
		puts "Starting game..."
		@secret_word = secret_word
		@count = 0
		@total_attempts = secret_word.length
		@guess = nil
		@array = ["filler"]
	end

	def compare_guess
		if @secret_word == guess
			puts "You Win!"
		else
			puts "Try again"
		end

	end

	def make_guess
		if @count < @total_attempts
			puts "Make a new guess!"
		else
			puts "Game Over"
		end
	end

	def round_counter
		if @array[0] == @guess
			puts "Please do not repeat a guess"
		else 
			@count += 1
		end
	end

	def push_guess
		@array.push(@guess)
		@array.delete_at(0)
	end
		
end
=begin
#Driver Code for Testing Attributes
game = Guessing_game.new("Bacon")
p game.secret_word
p game.count
p game.total_attempts
p game.guess
#Compared guess with secret word
p game.compare_guess
#Checked to see if the method make_guess work correctly
p game.make_guess
p game.guess
=end

loop do 

puts "Please start by entering your secret word."
word = gets.chomp.to_s
game =Guessing_game.new(word)

puts "Lets begin."
puts "What is your first guess"

while game.count != game.total_attempts
game.guess = gets.chomp.to_s
game.compare_guess
break if game.guess == game.secret_word
game.round_counter
game.push_guess
game.make_guess
end

puts "To close the game type 'done' Otherwise press enter to continue"
end_game_trigger = gets.chomp.to_s
break if  end_game_trigger == "done"
end

