#Ask user for hampster name
puts "What is your Hamsters name?" 
name = gets.chomp

#Ask user how squeaky the hampster is?
puts "How squeaky is your Hampster? 1 being quite and 10 being very squeaky"
squeaky = gets.chomp.to_i

#Ask user what color the hampster is?
puts "What color fur does your Hampster have?"
fur = gets.chomp

#Ask user if the hampster is good for adoption
puts "Is your hampster a good canidate for adoption (y/n)"
adoption = gets.chomp.upcase
	if adoption == "Y"
		adoption = true
	else 
		adoption = false
	end

#Ask for estimated age of hampster
puts "What is the estimated age of your hampster?"
age = gets.chomp
	if  age == ""
		age = nil
	else
		age.to_f
	end
