
class Wordgame

	attr_reader :guesses, :guess_counter, :coded_array
	
	def initialize(word_to_guess)
		@mystery_word = word_to_guess.chars
		@guesses = @mystery_word.length
		@guess_counter = 0 
		@past_guesses = []
	end
	
	def players_array
		@coded_array = ["*"] * @mystery_word.length
	end
	
	def process_guess(guessed_letter)
		@guessed_letter = guessed_letter
		count = 0 
		@mystery_word.each do |letter|
			if letter == guessed_letter
				@coded_array[count] = guessed_letter
				@coded_array
			end
			count += 1 
		end
		@coded_array
	end
	
	def guess
		if !@past_guesses.include?(@guessed_letter)
			@guess_counter += 1 
			@past_guesses << @guessed_letter
		end
		@past_guesses
	end
	
	def print 
		puts "#{@coded_array.join}"
		@coded_array.join
	end
end


puts "Enter word for opponent to guess:"
game = Wordgame.new(gets.chomp.downcase) 

game.players_array

while game.guess_counter < game.guesses 
	winner = false 
	puts "Please enter a letter:"
	game.process_guess(gets.chomp)
	game.guess 
	game.print
	if !game.coded_array.include? ("*")
		winner = true
		break
	end
end

if win
	puts "YOU WON!"
else
	puts "YOU LOSE!!"
	
end

		
		
		
		
		
			
	
	
	
	
	
	
	
