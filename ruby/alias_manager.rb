def next_vowel(vowel)
	if vowel == "u" #edge case
		code_vowel = "a"
	else
		vowel_collection = "aeiou"
		current_vowel = vowel_collection.index(vowel) 
		code_vowel = vowel_collection[current_vowel + 1] 
	end
	code_vowel
end

def next_consonant(consonant)
	if consonant == "z" 
		code_consonant = "b"
	else
		consonant_collection = "bcdfghjklmnpqrstvwxyz"
		current_consonant = consonant_collection.index(consonant) 
		code_consonant = consonant_collection[current_consonant + 1] 
	end
	code_consonant
end

puts "Please enter your name or type 'quit' to exit"
	# if gets.chomp.downcase == "quit"
	# 	exit
	# else
before_name = gets.chomp.downcase.split(' ')


# def name_changer(before_name)

	first_name = []
	last_name = []									

		
	#Here I am taking the array before_name at index 0, and seperating
	#by character, overwriting the array. I need a do loop for every item in the array.
	#and now i'm stuck.  how do i use my methods here and how do i know
	#which letters are vowels and which are sweet sweet consonants. 

	vowels = ["a", "e", "i", "o", "u"]

	before_name[0].chars.map! do |letter|
		if vowels.index(letter) != nil
			first_name << next_vowel(letter)
		else
			first_name << next_consonant(letter)
		end
	end
	
	first_name = first_name.join('')

	before_name[1].chars.map! do |letter|
		if vowels.index(letter) != nil
			last_name << next_vowel(letter)
		else
			last_name << next_consonant(letter)
		end
	end


	last_name = last_name.join('')
	
	code_names = []



		

	
	p last_name.capitalize! + " " + first_name.capitalize!
	
	# name_storage = last_name.capitalize! + " " + first_name.capitalize!
	
	# code_names << name_storage
	
	whole_name = last_name + " " + first_name
	
	code_names << whole_name
	
	p code_names
	
# end


#interface incomplete / loop incomplete / stored names incomplete

