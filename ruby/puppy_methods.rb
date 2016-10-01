
class Puppy

	def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
 end

	def speak(number)
    number.times do
      puts "Woof!"
    end
  end
  
	def roll_over
		puts "Roll Over!"
	end

	def dog_years(human)
		dog = human * 7
		
	end
	
	def play_dead
		puts "Your dog is now dead.  Nah, just playin'"
	end
	
  def initialize
    puts "Initializing new puppy instance..."
  end

end

# pup = Puppy.new
# 
# pup.speak(5)
# pup.fetch("Ball")
# pup.dog_years(5)
# pup.play_dead





class Cannabis
	def smoke(number_bowls)
		puts "You smoked #{number_bowls} bowls."
		end

	def initialize
		puts "Cannabis initialized."
		end
	
	def edibles(number_cookies)
		puts "You ate #{number_cookies} cookies!"
		end
	
	def dabs(number_dabs, dab_strength)
		puts "Bruh, you just did #{number_dabs} dabs of #{dab_strength}% THC."
		end
end


# blaze = Cannabis.new
# blaze.smoke(3)
# blaze.edibles(7)
# blaze.dabs(4, 60)


baked = []

50.times do
	baked << Cannabis.new
end

baked.each do |get_lit|
	get_lit.smoke(7)
	get_lit.dabs(5, 50)

end

p baked

























