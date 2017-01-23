# Disable echo for correct_word input
require 'io/console'

# Declare class

class WordGame
	attr_accessor :correct_word
	attr_accessor :guessed_word
	attr_reader :guesses_left
	attr_reader :is_over

	def initialize
		@correct_word = ""
		@guessed_word = ""
		@guesses_left = 1
		@is_over = false
	end


# Initialize a guessed_word variable made of “_” equal to the number of characters in correct_word
# Determine the number of guesses allowed based on correct_word.length
	def new_word(correct_word)
		@correct_word = correct_word
		@guessed_word = "_" * correct_word.length
		@guesses_left = correct_word.length * 2
		p "#{@guessed_word}"
	end


# Assign subsequent user inputs to the guessed_word variable.
# If the letter can be found in correct_word, 
# update guessed_word to show that letter

	def guess(guessed_letter)
		letter_count = 0
		correct_word.each_char do |letter|
			if letter == guessed_letter
				@guessed_word[letter_count] = correct_word[letter_count]
			end
			letter_count += 1
		end


# Keep track of how many times guessed_word is assigned
# Add 1 to the current number of guesses if the letter has not already been guessed

		p @guessed_word
		@guesses_left -= 1

# If the user guesses the word, show a congratulatory message

		if @guessed_word == @correct_word
		@is_over = true
		puts "You got it! Player 2 wins!"

# If number of guesses exceeds the number allowed, end the game and show a taunting message.
		elsif @guesses_left == 0
		@is_over = true
		puts "Haha, you're out of guesses! Player 1 wins!"
		end
	end

end


# DRIVER CODE

new_game = WordGame.new

# USER INTERFACE


# Player 1 interface

# Assign the user input to the correct_word variable
# Check that correct_word contains only letters (no numbers, punctuation, etc.)

correct_word = ""
allowed_chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ "
word_check = false
until word_check == true
		puts "Player 1: Please enter a word for the other player to guess:"
		correct_word = STDIN.noecho(&:gets).chomp.upcase
		correct_word.each_char do |letter|
			if allowed_chars.include?(letter)
				word_check = true
			else
				puts "Invalid input. Please include letters and spaces only."
				word_check = false
			end
		end
end

new_game.new_word(correct_word)


# Player 2 interface

guess_log = []
while new_game.is_over == false
	puts "Player 2: Guess a letter. You have #{new_game.guesses_left} guesses remaining."
	input_letter = gets.chomp.upcase
	# Check if letter has been guessed before, or if input is invalid
	if guess_log.include?(input_letter)
		puts "You've already guessed '#{input_letter.upcase}'! Try again:"
	elsif input_letter.length > 1
		puts "Only single letters and spaces allowed. Try again:"
	elsif allowed_chars.include?(input_letter) == false
		puts "Only letters and spaces allowed (no numbers or punctuation). Try again:"
	else 
		guess_log << input_letter
		puts "Guesses so far: #{guess_log}"
		new_game.guess(input_letter)
	end
end


