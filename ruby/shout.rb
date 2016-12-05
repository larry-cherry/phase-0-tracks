=begin
module Shout

	def self.yell_angrily(words)
    	words + "!!!" + " :("
  	end

  	def self.yelling_happy(words)
    words + "!!!" + " :D"
  	end

end

#Driver Code for first Module iteration
p Shout.yell_angrily("Your a bad bad module")
p Shout.yelling_happy("Whoop")
=end

module Shout
  def yell_angrily(words)
    puts words + "!!!" + " :("
  end

  def yelling_happy(words)
  	puts words + "!!!"
  end

  def lower_voice(words)
  	puts "Stop yelling " + words + ". There is no need to yell." 
  end
end


class Ricky
	include Shout
end

class Gigem
	include Shout
end

#Driver Code for Release 3
ricky_bobby = Ricky.new
ricky_bobby.yell_angrily("If your not first your Last")
ricky_bobby.yelling_happy("Shake and Bake")
ricky_bobby.lower_voice("I'M on FIRE!!!")

gigem_aggies = Gigem.new
gigem_aggies.yell_angrily("BTHO TU")
gigem_aggies.yelling_happy("Farmers Fight")
gigem_aggies.lower_voice("Tea Sip")
#Ran program and had no issues. 