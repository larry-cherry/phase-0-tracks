# Gets User name
puts "What is your name?"
name = gets.chomp
# Gets user age
puts "How old are you?"
age = gets.chomp.to_i
p age
# Asks if you wants garlic bread
puts "Our company cafeteria serves garlic bread. Should we order some for you? (Y/N)"
garlic = gets.chomp.upcase
p garlic
# Ask if the user want to enroll in the company's health insurance
puts "Would you like to enroll in the company's health insurance? (Y/N)"
insurance = gets.chomp.upcase
p insurance
