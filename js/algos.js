// Release 0
// takes an array of words or phrases and returns the longest word or phrase in the array.

function longestStr(input_array){
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


// Release 1
// function that takes two objects and checks to see if the objects share at least one key-value pair


function checkMatch(customer1, customer2){
		if (customer1.name == customer2.name || customer1.age == customer2.age){
	 		return true;
	 	}
	 	else{
	 		return false;
	 	}
}

// Release 2
// takes an integer for length, and builds and returns an array of strings of the given length. 


// DRIVER CODE

// Release 0

console.log(longestStr(["I", "am", "Brianna", "how", "about", "you?"]));
console.log(longestStr(["What", "a", "beautiful", "day"]));

// Release 1

// Names different, ages same - expect true
var customer1 = {name: "Steven", age: 54};
var customer2 = {name: "Tamir", age: 54};
console.log(checkMatch(customer1, customer2));

// Names same, ages different - expect true
var customer1 = {name: "Steven", age: 54};
var customer2 = {name: "Steven", age: 31};
console.log(checkMatch(customer1, customer2));

// Names and ages different - expect false
var customer1 = {name: "Steven", age: 54};
var customer2 = {name: "Tamir", age: 31};
console.log(checkMatch(customer1, customer2));

// Names and ages same - expect true
var customer1 = {name: "Steven", age: 54};
var customer2 = {name: "Steven", age: 54};
console.log(checkMatch(customer1, customer2));

// Release 2

