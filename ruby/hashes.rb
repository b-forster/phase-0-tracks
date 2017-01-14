#Client's name

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
	decided_on_style == true
else
	decided_on_style == false
end

puts "Name of customer who referred you (if any):"
referral_name = gets.chomp