continents = {
	"North America" => {
		num_of_countries: 23,

		yummiest_food: [
			"tacos", "hamburgers", "buffalo wings"
		],

		notable_animals:{

			reptile: "Gila monster",
			bird: "bald eagle",
			mammal: "gray fox"
		}
	},

	"Asia" => {
		num_of_countries: 50,

		yummiest_food: [
			"sushi", "curry", "pad thai"
		],

		notable_animals:{

			reptile: "Komodo dragon",
			bird: "crane",
			mammal: "yak"
		}
	},

	"Europe" => {
		num_of_countries: 52,

		yummiest_food: [
			"pizza", "gyros", "Swedish meatballs"
		],

		notable_animals:{

			reptile: "basilisk",
			bird: "gryphon",
			mammal: "Siberian husky"
		}
	},
}

p continents["North America"][:notable_animals][:mammal]

continents["Asia"][:yummiest_food].push("kebab")

p continents["Asia"][:yummiest_food]

continents["Europe"][:num_of_countries] -=1

p continents["Europe"][:num_of_countries]