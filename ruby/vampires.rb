result = "Result inconclusive"

# Gets User name
puts "What is your name?"
name = gets.chomp

# Gets user age
puts "How old are you?"
age = gets.chomp.to_i
p age
puts "What year were you born?"
birthyear = gets.chomp.to_i
realage = 2016 - birthyear
p realage

#Compares their age with realage and checks if they match

	if realage != age
		age_warning = true
	else
		age_warning = false
	end
p age_warning

# Asks if you wants garlic bread
puts "Our company cafeteria serves garlic bread. Should we order some for you? (Y/N)"
dislike_garlic = gets.chomp.upcase
p dislike_garlic
	if dislike_garlic == "N"
		dislike_garlic = true
	else
		dislike_garlic = false
	end
p dislike_garlic

# Ask if the user want to enroll in the company's health insurance
puts "Would you like to enroll in the company's health insurance? (Y/N)"
waives_insurance = gets.chomp.upcase
	if waives_insurance == "N"
		waives_insurance = true
	else
		waives_insurance = false
	end
p waives_insurance

if !(age_warning && dislike_garlic)
	result = "probably not a vampire"
end

if age_warning && (dislike_garlic || waives_insurance)
	result = "probably a vampire"
end

if age_warning && dislike_garlic && waives_insurance
	result = "Almost certainly a vampire"
end

if name == ("Drake Cula" || "Tu Fang")
	result = "Definitely a vampire"
end
p result

#Release 2: Detection Logic: This section is for my notes. Which is why its commented out. 

#wolves_like_sunshine = true
#wolves_like_garlic = true
#vampires_like_sunshine = false
#vampires_like_garlic = false

#The following are outputs of boolean operations.  

# wolves_like_garlic && wolves_like_sunshine = true
# wolves_like_garlic || vampires_like_garlic = true
# wolves_like_garlic && vampires_like_garlic =  false
# wolves_like_garlic && (vampires_like_sunshine || vampires_like_garlic) = false
# (wolves_like_garlic && vampires_like_garlic) || wolves_like_sunshine = true
# vampires_like_garlic = false
# !vampires_like_garlic = true
# !(wolves_like_sunshine && wolves_like_garlic) = false
