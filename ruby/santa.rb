class Santa 
	attr_accessor :enthnicity, :age
	
	def initialize(gender, enthnicity)
		puts "Initializing Santa..."
		@gender = gender
		@enthnicity = enthnicity
		@age = rand(140)
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end
	
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	def birthday
		age = @age += 1
		puts "This Santa is now #{@age} years old!"
	end
	

	
	def get_mad_at(reindeer_name)
			puts "I'm MAD AT #{reindeer_name}"
			@reindeer_ranking.delete(reindeer_name)
			@reindeer_ranking << (reindeer_name)
			puts "The order is now #{@reindeer_ranking}"
		end

	def gender(new_gender)
			@gender = new_gender
		end

end

################################################################################################

# nick = Santa.new("Male", "Black")
# p nick.age
# p nick.enthnicity
# p nick.gender("female")





# santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]




25.times do
	claus = Santa.new(example_genders.sample, example_ethnicities.sample)
	p claus
    
end


################################################################################################
# claus.age
# claus.speak
# claus.eat_milk_and_cookies("oatmeal")
# Release zero complete
# Start realease one.
# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")
# p santas
