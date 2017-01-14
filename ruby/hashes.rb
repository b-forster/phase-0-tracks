
#Assign variables to user input

puts "Name:"
name = gets.chomp

puts "Age:"
age = gets.chomp.to_i

puts "Number of rooms:"
num_of_rooms = gets.chomp.to_i

puts "Have you decided on a decor style? (y/n):"
decided_on_style = gets.chomp
#Convert to boolean
if decided_on_style == "y"
	decided_on_style = true
else
	decided_on_style = false
end

puts "Name of customer who referred you (if any):"
referral_name = gets.chomp

#Set up hash

user_responses = {
	"Name" => name,
	"Age" => age,
	"Number of rooms" => num_of_rooms,
	"Decided on style" => decided_on_style,
	"Referral name" => referral_name
}

#Print hash

puts "Here are your responses:"
puts user_responses

#Confirm the responses are correct, allow user to change one response

puts "Enter the label of a response you would like to change. If no changes need to be made, enter 'none'."
key_to_change = gets.chomp

if key_to_change == "none"
	puts "We have received your responses. Thank you!"
else
	puts "New response for '#{key_to_change}':"
	updated_response = gets.chomp

#Covert to integer for "Age", "Number of rooms"
	if (key_to_change == "Age" || key_to_change == "Number of rooms")
		updated_response = updated_response.to_i

#Convert to boolean for "Decided on style"
	elsif key_to_change == "Decided on style"
		if updated_response == "y"
			updated_response = true
		else
			updated_response = false
		end
	end
		
	user_responses[key_to_change] = updated_response
	puts user_responses
	puts "We have received your updated responses. Thank you!"
end