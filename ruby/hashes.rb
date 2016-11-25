=begin 
pseudocode and write a program that will allow an interior designer to enter the details of a given client: the client's name, age, number of children, decor theme, and so on (you can choose your own as long as it's a good mix of string, integer, and boolean data).

Your keys should be symbols unless you find that you need a string for some reason -- usually only when spaces or other "user friendly" formatting are needed (as in the case of using someone's full name as a hash key). Basically, symbols are simpler for programmers to use, and readable enough by technical folks to be used in place of strings most of the time.

Your program should ...

Prompt the designer/user for all of this information.
Convert any user input to the appropriate data type.
Print the hash back out to the screen when the designer has answered all of the questions.
Give the user the opportunity to update a key (no need to loop, once is fine). After all, sometimes users make mistakes! If the designer says "none", skip it. But if the designer enters "decor_theme" (for example), your program should ask for a new value and update the :decor_theme key. (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.
Print the latest version of the hash, and exit the program.
Be sure to pseudocode, and leave your pseudocode in as comments.
Name, Age, number of children,  decor theme
=end

puts "Welcome to my program"
puts "We will need some information to get started" 

user_info = {}

puts "Please enter your name"
user_info[:name] = gets.chomp

puts "Pleae enter you age"
user_info[:age] = gets.chomp.to_i

puts "Please enter how many children you have"
user_info[:children] = gets.chomp.to_i

puts "What is your decor theme"
user_info[:decor_theme] = gets.chomp

p user_info

puts "Please review the information listed above"
puts "If no changes are needed type none"
puts "If you need to change any of the information type the key press enter and input the new information"

form_change = gets.chomp

if form_change == "name"
	puts "enter new value"
	user_info[:name] = gets.chomp

elsif form_change == "age"
	puts "enter new value"
	user_info[:age] = gets.chomp.to_i

elsif form_change == "children"
	puts "Please enter new value"
	user_info[:children] = gets.chomp.to_i

elsif form_change == "decor_theme"
	puts "Please enter new value"
	user_info[:decor_theme] = gets.chomp

else form_change == "none"
	puts "No change required"

end

p ''
p user_info	

 	 