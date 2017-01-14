#Assign variables to user input

puts "Name:"
name = gets.chomp

puts "Age:"
age = gets.chomp.to_i

puts "Number of rooms:"
num_of_rooms = gets.chomp.to_i

puts "Have you decided on a decor style? (y/n):"
decided_on_style = gets.chomp
#convert to boolean
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
	key_to_change.to_sym
	puts "New response for '#{key_to_change}':"
	updated_response = gets.chomp
	key_to_change = updated_response
	puts "We have received your updated responses. Thank you!"
	puts user_responses
end