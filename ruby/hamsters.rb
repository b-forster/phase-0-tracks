puts "What is the hamster's name?"
name = gets.chomp

puts "What is the volume level? (1-10)"
volume = gets.chomp.to_i

puts "What is the fur color?"
color = gets.chomp

puts "Is it a good candidate for adoption? (y/n)"
good_candidate = gets.chomp

if good_candidate == "y"
	good_candidate = true
elsif good_candidate == "n"
	good_candidate = false
end
	

puts "What is the estimated age?"
age = gets.chomp

if age == ""
	age = nil
else
	age = age.to_i
end

puts "Hamster's name: #{name}"
puts "Hamster's volume level: #{volume}"
puts "Hamster's fur color: #{color}"
puts "Good candidate for adoption: #{good_candidate}"
puts "Hamster's estimated age: #{age}"