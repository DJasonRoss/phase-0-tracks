def encrypt(input)
 input.downcase!
 length = input.length
 coded_string = ""
 for i in 0..(length-1)
   letter = input[i]
   if letter == "z"
   	coded_string += "a"
   else
   coded_string += letter.next
   end
 end
 coded_string
end



def decrypt(input)
 input.downcase!
 alph = "abcdefghijklmnopqrstuvwxyz"
 length = input.length
 coded_string = ""
 for i in 0..(length-1)
   letter = input[i]
   if letter == "!"
   	
   	coded_string += " "
   else
   currlet = alph.index(letter)
   #
   coded_string += alph[currlet - 1]
   end
 end
 coded_string
end



puts "Encrypt or decrypt?"
e_or_d = gets.chomp
e_or_d.downcase!

puts "Enter Password"
password = gets.chomp

if e_or_d == "encrypt"
	encrypt(password)
elsif e_or_d == "decrypt"
	decrypt(password)
else
	puts "Incorrect Password"
end