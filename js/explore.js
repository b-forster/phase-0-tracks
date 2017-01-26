// Create a function that takes a string as its argument

// Create a variable to store the reversed word

// Loop backwards through each letter in the original word, adding each letter to the reversed word

function reverse(str){
	var new_str = "";
	for (var i=str.length-1; i>-1; i--){
		new_str = new_str + str[i];
	}
	return new_str
}



// DRIVER CODE

// Store return value of the function in a variable

// Print the variable if some condition is true

reversed_word = reverse("Hello world!");

if (1 == 1){
	console.log(reversed_word);
}