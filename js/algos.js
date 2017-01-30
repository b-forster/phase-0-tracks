//takes an array of words or phrases and returns the longest word or phrase in the array.

function longest_str(input_array){
	// Push character count of each string to new array
	var input_lengths = [];
	for (i=0; i < input_array.length; i++){
		input_lengths.push(input_array[i].length);
	}
	// Find the highest character count
	var longest_char_count = Math.max.apply(Math, input_lengths);
	// Find index of the string that matches the highest character count
	var longest_index = input_lengths.indexOf(longest_char_count);
	// Return the string with the same index number from the original array
	var longest_string = input_array[longest_index];
	return longest_string
}


// DRIVER CODE


console.log(longest_str(["I", "am", "Brianna", "how", "about", "you?"]));

console.log(longest_str(["What", "a", "beautiful", "day"]));