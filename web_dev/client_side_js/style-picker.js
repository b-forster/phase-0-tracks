function changeStyle() {

	//List all possible attributes in an array
	var allTextColors = ["aliceblue", "beige", "black", "DarkBlue", "DarkSeaGreen", "DarkSlateBlue", 
		"DodgerBlue", "firebrick", "gainsboro", "indigo", "lightblue", "lavendar", "lightcyan", 
		"lightcoral", "lightsteelblue", "maroon", "mediumpurple", "midnightblue", "navy", "palevioletred",
		"plum", "peru", "sienna", "teal", "pink", "forestgreen", "deeppink", "brown", "khaki", 
		"slategrey", "yellowgreen"];
	var allBackgroundColors = ["aliceblue", "beige", "black", "DarkBlue", "DarkSeaGreen", "DarkSlateBlue", 
		"DodgerBlue", "firebrick", "gainsboro", "indigo", "lightblue", "lavendar", "lightcyan", 
		"lightcoral", "lightsteelblue", "maroon", "mediumpurple", "midnightblue", "navy", "palevioletred",
		"plum", "peru", "sienna", "teal", "pink", "forestgreen", "deeppink", "brown", "khaki", 
		"slategrey", "yellowgreen"];
	var allFonts = ["Helvetica", "Arial Black", "Impact", 
		"Trebuchet MS", "Courier New", "Futura", "Gill Sans", "Copperplate",
		"Baskerville", "Didot", "Garamond", "Palatino", "Tahoma"];
	var allBorderStyles = ["none", "solid", "dotted", "dashed", "double", "groove", "ridge", "inset"];
	var allBorderColors = ["aliceblue", "beige", "black", "DarkBlue", "DarkSeaGreen", "DarkSlateBlue", 
		"DodgerBlue", "firebrick", "gainsboro", "indigo", "lightblue", "lavendar", "lightcyan", 
		"lightcoral", "lightsteelblue", "maroon", "mediumpurple", "midnightblue", "navy", "palevioletred",
		"plum", "peru", "sienna", "teal", "pink", "forestgreen", "deeppink", "brown", "khaki", 
		"slategrey", "yellowgreen"];
	var allBorderWidths = ["1px", "2px", "3px", "4px", "5px"];

	//Select each attribute at random
	var textColor = allTextColors[Math.floor(Math.random()*allTextColors.length)];
	var backgroundColor = allBackgroundColors[Math.floor(Math.random()*allBackgroundColors.length)];
	var font = allFonts[Math.floor(Math.random()*allFonts.length)];
	var borderStyle = allBorderStyles[Math.floor(Math.random()*allBorderStyles.length)];
	var borderColor = allBorderColors[Math.floor(Math.random()*allBorderColors.length)];
	var borderWidth = allBorderWidths[Math.floor(Math.random()*allBorderWidths.length)];

	//Apply styles for each attribute


	pageText.style.color = textColor;
	pageText.style.backgroundColor = backgroundColor;
	pageText.style.fontFamily = font;
	pageText.style.borderStyle = borderStyle;
	pageText.style.borderColor = borderColor;
	pageText.style.borderWidth = borderWidth;
	console.log(pageText);

}

var pageText = document.getElementById("text-to-change");
pageText.addEventListener("click", changeStyle);



