class Santa

	attr_reader :enthicity, :age

	def speak
		puts "Ho, Ho Ho!  Happy Holidays!!!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!!"
	end

	def initialize(gender,enthicity)
		puts "Initializing Santa Instance..."
		@gender = gender
			puts "#{@gender}"
		@enthicity = enthicity
			puts "#{@enthicity}"
		@age = rand(140)
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

	end

	def celebrate_birthday
			@age += 1
				if @age == 1
			puts "Happy Birthday, Santa!! You are now #{@age} year old."
				else puts "Happy Birthday, Santa!! You are now #{@age} years old."
		end
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
			
# claus = Santa.new("male","russian","169",9)
# claus.speak
# claus.eat_milk_and_cookies("Oatmeal")
# claus.enthicity
# # claus.age
# claus.celebrate_birthday
# claus.celebrate_birthday
# claus.celebrate_birthday
# claus.age
# claus.get_mad_at("Rudolph")


santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]


100.times do
	claus = Santa.new(example_genders.sample, example_ethnicities.sample)
    puts "This Santa is #{claus.age} years old."
end




#claus = Santa.new(example_genders.sample, example_ethnicities.sample)
#Above driver code works.


































