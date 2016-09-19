puts "How many employees will be processed?"
employee_number = gets.chomp.to_i
counter = 0

until counter == employee_number

	puts "What is your name?"
	name = gets.chomp

	puts "How old are you?"
	age = gets.chomp.to_i

	puts "In what year were you born?"
	birth_year = gets.chomp.to_i

	puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	garlic_bread = gets.chomp

	puts "Would you like to enroll in the company’s health insurance?"
	health_ins = gets.chomp

	if (age + birth_year < 2015 || age + birth_year > 2016)
		age_test = false
	else
		age_test = true
	end

	if name = "Drake Cula" || name = "Tu Fang" || name = "Dr. Acula"
		vamp_test = true
	else
		vamp_test = false
	end

	if garlic_bread == "yes" || health_ins == "yes"
		if age_test == true
			vampire_status = "Probably not a vampire"
		else
			vampire_status = "Probably a vampire"
		end

	elsif age_test == false && garlic_bread == "no" && health_ins == "no"
		vampire_status = "Almost certainly a vampire" 
	elsif vamp_test == true
		vampire_status = "Definitely a vampire"
	else 
		vampire_status = "Results inconclusive." 
	end

	puts "Please type any allergies you have and type \"done\" when complete"
		
		allergy = "none"
		while allergy != "done"
		allergy = gets.chomp
			
			if allergy == "sunshine"
					vampire_status = "Probably a vampire"
					allergy = "done"
			end
		end
		
	puts vampire_status
	puts ""
	counter += 1

	if counter < employee_number
		puts "Employee ##{counter + 1}"
	else
		puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends!!!"
	end
end
