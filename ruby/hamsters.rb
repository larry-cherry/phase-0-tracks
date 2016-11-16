puts "What is your Hamsters name?"
name = gets.chomp
puts "How squeaky is your Hampster? 1 being quite and 10 being very squeaky"
squeaky = gets.chomp
puts "What color fur does your Hampster have?"
fur = gets.chomp
puts "Is your hampster a good canidate for adoption (y/n)"
adoption = gets.chomp.upcase
puts "What is the estimated age of your hampster?"
age = gets.chomp
	if  age == ""
		age = nil
		
	end
p age