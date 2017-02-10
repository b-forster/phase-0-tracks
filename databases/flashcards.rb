# This program allows the user to create and review flash cards from the command line.

require 'sqlite3'

# Create a new card
# Assign one string to the front of the card, and one string to the back of the card

cards = SQLite3::Database.new("flashcards.db")
cards.results_as_hash = true


create_cards_table = <<-SQL
		CREATE TABLE IF NOT EXISTS cards(
			id INTEGER PRIMARY KEY,
			front VARCHAR(255),
			back VARCHAR(255)
			)
		SQL

		add_card = <<-SQL
		INSERT INTO cards (front, back)
		VALUES (?, ?)
		SQL


# Review cards


# DRIVER CODE

# Ask whether to create cards or review
# Create cards

add_more_cards = true

until add_more_cards == false
	puts "Would you like to add a new card? (y/n)"
	new_card_query = gets.chomp

	if new_card_query.downcase == "y"
		cards.execute(create_cards_table)

		puts "Input a prompt for the front of the card:"
		question = gets.chomp

		puts "Input an answer for the back of the card:"
		answer = gets.chomp

		cards.execute(add_card, [question, answer])
		add_more_cards = true

	elsif new_card_query == "n"
		puts ""
		puts "OK, time to review!"
		puts ""
		add_more_cards = false

	else
		puts "Invalid input. Please try again."
		add_more_cards = true
	end
end

# Review cards

# Cycle through the cards in order, showing the front and prompting for the back.
# If the input is correct, add 1 to the correct card count
# If the input is incorrect, show the correct answer
# Add incorrect cards to new database table

cards.execute(create_cards_table)

all_cards = cards.execute("SELECT * FROM cards")
total_cards = all_cards.length
card_index = 1
correct_count = 0
wrong_answers = []

all_cards.each do |card|
	puts "- CARD #{card_index}/#{total_cards} -"
	puts "Input the correct answer for this prompt:"
	puts "#{card['front']}"
	answer_guess = gets.chomp
	if answer_guess == "#{card['back']}"
		puts "Correct!"
		puts ""
		correct_count += 1
	else
		puts "Sorry, the correct answer is '#{card['back']}'."
		puts ""
		wrong_answers.push(card)
	end
	card_index +=1
end

# Show a message when correct answers have been given for all cards

puts "---"
puts ""
puts "You got #{correct_count} out of #{total_cards} cards correct."

if correct_count == total_cards
	puts "Well done!"
else
	puts "Here's what to study for next time:"
	puts ""
	wrong_answers.each do |card|
		puts "PROMPT: #{card[1]}"
		puts "ANSWER: #{card[2]}"
		puts ""
	end
end

