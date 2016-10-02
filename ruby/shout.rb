
# module Shout
# def self.yell_angrily(words)
#     	words + "!!!" + " :("
#   	end
#   	def self.yelling_happily(words)
#   		words.upcase!
#   		"I'M SO HAPPY BECAUSE " + words + "!!!"
#  end

#  self.yelling_happily("my code works")

module Shout
	def twist_and_shout(words)
		puts "You know you look so " + words + "."
	end

	def let_it_all_out(words)
		puts "These are the things I can do " + words + ". "
	end
end



class Tears_for_fears
	include Shout
end

class Beatles
	include Shout
end


Tears_for_fears = Tears_for_fears.new
Tears_for_fears.let_it_all_out("without")

Beatles = Beatles.new
Beatles.twist_and_shout("fine")


