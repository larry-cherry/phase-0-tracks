# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".<swapcae>
# => “InVeStIgAtIoN”
puts "iNvEsTiGaTiOn"
puts "iNvEsTiGaTiOn".swapcase

# "zom".<insert(2, 'o')>
# => “zoom”
puts "zom"
puts "zom".insert(2, 'o')

# "enhance".center(20)>
# => "    enhance    "
puts "enhance"
puts "enhance".center(20)

# "Stop! You’re under arrest!".<upcase>
# => "STOP! YOU’RE UNDER ARREST!"
puts "Stop!"
puts "Stop!".upcase

# "the usual".<prepend>
#=> "the usual suspects"
a = "suspects"
puts "the usual"
a.prepend("the usual ")
puts a

# " suspects".<prepend>
# => "the usual suspects"
a = "the usual"
puts " suspects"
a.prepend(" suspects")
puts a

# "The case of the disappearing last letter".<chop>
# => "The case of the disappearing last lette"
puts "The case of the disappearing last letter"
puts "The case of the disappearing last letter".chop

# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"
puts "The mystery of the missing first letter"
puts "The mystery of the missing firsst letter".slice(1, 39)


# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"
puts "Elementary,    my   dear        Watson!"

# "z".<ord>
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
puts "z"
puts "z".ord

# "How many times does the letter 'a' appear in this string?".<count("a")>
# => 4
puts "How many times does the letter 'a' appear in this string?"
"How many times does the letter 'a' appear in this string?".count("a")
