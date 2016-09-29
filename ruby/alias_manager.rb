## First we need to define the methods for swapping letters.  Here we will define a vowel skipping method. ##

def vowel_skip(vowel)
	if vowel == "u" 
		coded_vowel = "a"
	else
		vowel_colection = "aeiou"
		current_vowel = vowel_colection.index(vowel) 
		coded_vowel = vowel_colection[current_vowel + 1] 
	end
	coded_vowel
end

## Next we need to do the same thing for consonants. ##

def consonant_skip(consonant)
	if consonant == "z" 
		coded_consonant = "b"
	else
		consonant_collection = "bcdfghjklmnpqrstvwxyz"
		current_consonant = consonant_collection.index(letter) 
		coded_consonant = consonant_collection[current_consonant + 1] 
	end
	coded_consonant
end

## We also need to swap the first and last names. ##



## Moving on for now, need to make up so much work. ##