puts "How many employees will be processed today?"
i = gets.chomp.to_i

until i == 0

	puts "What is your name?"
	name = gets.chomp

	puts "How old are you?"
	age = gets.chomp.to_i

	puts "What year were you born?"
	born = gets.chomp.to_i

	puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
	garlic = gets.chomp

	puts "Would you like to enroll in the company's health insurance? (y/n)"
	insurance = gets.chomp

	n = 0
	until n == "done"
		puts "Name any allergies you may have, one by one. Enter 'done' when finished."
		n = gets.chomp
		if n == "sunshine"
			break
		end
	end

	if n == "sunshine"
		puts "Sunshine check: failed. Probably a vampire."
	else

		if name != "Drake Cula" && name != "Tu Fang"
			name_ok = true
			puts "Name check: cleared!"
		else
			name_ok = false
			puts "Name check: failed!"
		end

		if age == (2016 - born) || age == (2015 - born) 
			# Accounting for people who have not yet had their birthday in 2016
			age_ok = true
			puts "Age check: cleared!"
		else
			age_ok = false
			puts "Age check: failed!"
		end

		if garlic == "y"
			garlic_ok = true
			puts "Garlic check: cleared!"
		else
			garlic_ok = false
			puts "Garlic check: failed!"
		end

		if insurance == "y"
			insurance_ok = true
			puts "Mortality check: cleared!"
		else
			insurance_ok = false
			puts "Mortality check: failed!"
		end

		puts "Sunshine check: cleared!"


		if age_ok == true && (garlic_ok == true || insurance_ok == true)
			puts "Probably not a vampire."
		elsif age_ok == false && (garlic_ok == false || insurance_ok == false)
			puts "Probably a vampire."
		elsif age_ok == false && garlic_ok == false && insurance_ok == false
			puts "Almost certainly a vampire."
		elsif name_ok == false
			puts "Definitely a vampire."
		else
			puts "Results inconclusive."
		end
	end
	i -= 1
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."