# Vampires v2


# data collection / storing in variables.



puts "How many employees will be processed?"
to_process = gets.chomp.to_i
until to_process == 0 

puts "What is your name?"
employ_name = gets.chomp.downcase!



name_test = true
if employ_name == "drake cula" || employ_name == "tu fang" || employ_name == "dr. acula"
	name_test = false

end


puts "How old are you?"
employ_age = gets.chomp.to_i

puts "In which year were you born?"
employ_birth_year = gets.chomp.to_i

puts "Would you like garlic bread?"
garlic_bread = gets.chomp.downcase

puts "Health insurance?"
insurance = gets.chomp

#Detetction logic.

if garlic_bread  == ("yes" || "y")
	 bread_status = true
	else bread_status = false
end

if insurance  == ("yes" || "y")
	 insurance_status = true
	else insurance_status = false

end


if (employ_age + employ_birth_year < 2015 || employ_age + employ_birth_year > 2016)
		age_test = false
	else
		age_test = true
end


if name_test == true && age_test == true && (bread_status == true || insurance_status == true)
	puts "Probably not a vampire."
	elsif name_test == false && age_test == true && (bread_status == true || insurance_status == true)
	puts "Totes a vampire."
end


if name_test == true && age_test == false && (bread_status == true || insurance_status == true)
		puts "Probably a vampire."
	elsif name_test == false && age_test == false && (bread_status == true || insurance_status == true)
	puts "Totes a vampire."
end

if age_test = true && (bread_status == false && insurance_status == false)
			puts "Almost certainly a vampire."
		elsif age_test = true && (bread_status == false && insurance_status == false)
		puts "Totes a vampire."
end
# # Adjusts counter 
to_process -= 1

end














