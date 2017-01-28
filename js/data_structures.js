var colors = ["blue", "green", "red", "yellow"];

var horses = ["Black Beauty", "Sea Biscuit", "Ed", "Unicorn"];

colors.push("orange");

horses.push("Secretariat");

horseColors ={};

for (i=0; i<colors.length; i++){
	horseColors[horses[i]]=colors[i];
};

console.log(horseColors);


