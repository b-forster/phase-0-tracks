function changeStyle(){
	var allTextColors = ["aliceblue","beige","black", "DarkBlue", "DarkSeaGreen", "DarkSlateBlue", 
		"DodgerBlue", "firebrick", "gainsboro", "indigo", "lightblue", "lavendar", "lightcyan", 
		"lightcoral", "lightsteelblue", "maroon", "mediumpurple", "midnightblue", "navy", "palevioletred",
		"plum", "peru", "sienna", "teal", "pink", "forestgreen", "deeppink", "brown", "khaki", 
		"slategrey", "yellowgreen"];
	var allBackgroundColors = ["aliceblue","beige","black", "DarkBlue", "DarkSeaGreen", "DarkSlateBlue", 
		"DodgerBlue", "firebrick", "gainsboro", "indigo", "lightblue", "lavendar", "lightcyan", 
		"lightcoral", "lightsteelblue", "maroon", "mediumpurple", "midnightblue", "navy", "palevioletred",
		"plum", "peru", "sienna", "teal", "pink", "forestgreen", "deeppink", "brown", "khaki", 
		"slategrey", "yellowgreen"];
	var allFonts = ["Helvetica", "Arial Black", "Comic Sans MS", "Impact", "Lucida Sans Unicode", 
		"Trebuchet MS", "Courier New", "Lucida Console", "Futura Medium", "Century Gothic Italic", 
		"Rockwell Bold", "Baskerville Regular", "Didot Regular", "Garamond Regular"];
	var allBorderStyles = ["none", "solid", "dotted", "dashed", "double", "groove", "ridge", "inset"];
	var allBorderColors = ["aliceblue","beige","black", "DarkBlue", "DarkSeaGreen", "DarkSlateBlue", 
		"DodgerBlue", "firebrick", "gainsboro", "indigo", "lightblue", "lavendar", "lightcyan", 
		"lightcoral", "lightsteelblue", "maroon", "mediumpurple", "midnightblue", "navy", "palevioletred",
		"plum", "peru", "sienna", "teal", "pink", "forestgreen", "deeppink", "brown", "khaki", 
		"slategrey", "yellowgreen"];
	var allBorderWidths = ["1px", "2px", "3px", "4px", "5px"];

	var textColor = allTextColors[Math.floor(Math.random()*allTextColors.length)];
	var backgroundColor = allBackgroundColors[Math.floor(Math.random()*allBackgroundColors.length)];
	var font = allFonts[Math.floor(Math.random()*allFonts.length)];
	var borderStyle = allBorderStyles[Math.floor(Math.random()*allBorderStyles.length)];
	var borderColor = allBorderColors[Math.floor(Math.random()*allBorderColors.length)];
	var borderWidth = allBorderWidths[Math.floor(Math.random()*allBorderWidths.length)];

	//console.log(textColor + backgroundColor + font + borderStyle + borderColor + borderWidth);
}

//changeStyle();