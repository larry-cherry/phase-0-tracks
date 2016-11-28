#Broke up the alphabet into workable chunks
#Manually configured a def to turn a character into another if it matached.


def spy_alias(real_name)
	real_name.gsub!(/[aeiou]/, "a" => "e", "e" => "i", "i" => "o", "o" => "u", "u" => "a") 
	real_name.gsub!(/[bcdfghjklm]/, "b" => "c", "c" => "d", "d" => "f", "f" => "g", "g" => "h", "h" => "j", "j" => "l", "l" => "m", "m" => "n") 
	real_name.gsub!(/[npqrstvwxyz]/, "n" => "p", "p" => "r", "r" => "s", "s" => "t", "t" => "v", "v" => "w", "w" => "x", "x" => "y", "y" => "z", "z" => "b")
end

name_array = []
# Asked the User for the spy Name
# Stored the real name and the spy name and printed the results.
puts "Please enter your realname. We will use your name to make your spy name"
loop do
	real_name = gets.chomp
	break if real_name == "exit"
	name_array << {name: real_name}
	spyname = spy_alias(real_name)
	name_array << [Spy_Name: spyname]
	puts "Enter next spy name"
end
	
	p name_array
