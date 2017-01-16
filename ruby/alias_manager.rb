
# Method to create spy name from real name

def alias_manager(full_name)

	# Split the string into two words
	split_name = full_name.split(' ')

	# Switch the order of the first and second word
	# Split up each character into a separate item in the array
	switched_name = [split_name[1], " ", split_name[0]].join.chars

	# Define vowels
	vowels = "aeiouaAEIOUA"
	consonants = "bcdfghjklmnpqrstvwxyzbBCDFGHJKLMNPQRSTVWXYZB"


	# Check each character in the name for vowels

	spy_letters = []

	switched_name.each do |letter|
		if (vowels.include?(letter) == true) && (letter == letter.downcase)
			spy_letters << vowels[vowels.index(letter)+1].downcase
		elsif (vowels.include?(letter) == true) && (letter == letter.upcase)
			spy_letters << vowels[vowels.index(letter)+1].upcase
		elsif (consonants.include?(letter) == true) && (letter == letter.downcase)
			spy_letters << consonants[consonants.index(letter)+1].downcase
		elsif (consonants.include?(letter) == true) && (letter == letter.upcase)
			spy_letters << consonants[consonants.index(letter)+1].upcase
		else
			spy_letters << letter
		end
		
	end
	# Combine characters into a single string
	spy_name = spy_letters.join
	return spy_name
end




# User interface
input = ""
input_log = Hash.new 

until input == "quit"
puts "Enter your name, or type 'quit' to exit:"
input = gets.chomp
	break if input == "quit"
spy_name = alias_manager(input) 
puts "Your secret alias is: #{spy_name}"

# Store real name inputs and spy name outputs as hash
input_log.merge! ({input => spy_name})
end

# Print log of real name inputs and spy name outputs
input_log.each do 
	|real_name, spy_name| p "#{spy_name} is actually #{real_name}!"
end
