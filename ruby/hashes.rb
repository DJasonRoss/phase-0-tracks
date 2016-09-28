## Using hash in a program. ##

## Here we will establish the information to be collected. ##
## After the value is gathered we will store it in the hash. ##


client_database = {}

puts "Enter name of client:"
name = gets.chomp
client_database[:name] = name

puts "Enter Client's Age:"
age = gets.chomp.to_i
client_database[:age] = age

puts "What is the client's decor preference?"
decor = gets.chomp
client_database[:decor] = decor

puts "Does the client have children?"
children = gets.chomp
if children == "yes"
	puts "How many children does the client have?"
	number_offspring = gets.chomp.to_i
if children == "no" 
	number_offspring = "0"
	end

end

client_database[:children] = number_offspring

puts "Is the client a return customer?"
return_customer = gets.chomp
	if return_customer == "yes"
		then return_customer = true
	if return_customer == "no"
		then return_customer = false
	end
end

client_database[:return_customer] = return_customer

## Once we have collected the information we will ##
## ask if the user would like to make changes.  If so, ##
## we will get new values and update the keys. ##

puts "Would you like to update any information? type `no` to skip"
info_update = gets.chomp

## If the user does not wish to update, we will simply ##
## print the information supplied. ##

if info_update =="no"
	puts client_database

## If the user would like to make changes, we will ##
## get the new information and apply changes here. ##

else


	puts "What would you like to update?"
	key_update = gets.chomp
	puts "What would you like to change that to?"
	value_update = gets.chomp
		if key_update == "age"
			client_database[key_update.to_sym] = value_update.to_i
		elsif key_update == "children"
			else
				if value_update == "true"
			 		value_update = true
			 		client_database[key_update.to_sym] = value_update
				elsif value_update == "false"
					value_update = false
					client_database[key_update.to_sym] = value_update
				else
					client_database[key_update.to_sym] = value_update
				end
			end

## This will now print the updated info for the user. ##
			
			puts client_database
end

