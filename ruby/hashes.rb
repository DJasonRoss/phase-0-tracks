#Interior Decor

#need users name, age, kids and decor theme.

puts "Please enter client's name:"
client_name = gets.chomp
puts "Please eneter client's age:"
client_age = gets.chomp.to_i 
puts "Please enter number of client children:"
client_kids = gets.chomp.to_i
puts "What is the client's decor theme?"
decor_theme = gets.chomp

#Now I need to organize all this info into a hash.
my_clients = {}

my_clients[:name] = client_name
my_clients[:age] = client_age
my_clients[:kids] = client_kids
my_clients[:theme] = decor_theme


#Give the user the opportunity to update a key (no need to loop, once is fine). After all, sometimes users make mistakes! If the designer says "none", skip it. But if the designer enters "decor_theme" (for example), your program should ask for a new value and update the :decor_theme key. (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.





puts "Would you like to update any of this information?"
update_query = gets.chomp
	if update_query =="no"
		puts my_clients
	else update_query == "yes"
		puts "Which value would you like to change? Name, Age, Kids or Theme?"
		new_key = gets.chomp.to_sym
		puts "Please eneter new value:"
		new_value = gets.chomp 
		my_clients[new_key] = new_value
	end 
p my_clients
