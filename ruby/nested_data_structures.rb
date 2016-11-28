#broke down my hash into rooms.
#Each room is represented by a key.
#Each key can contain a simple string or an array of multiple strings.
#Finally I did a standard print out of the data followed by cleaning up the print out by printing each room

my_duplex = {
	bedroom1: {
		pretty_name: 'Bed Room 1',
		furniture: ["bed", "nightstand", "dresser"],
		},
	bedroom2: {
		pretty_name: 'Bed Room 2',
		furniture: ['bed', 'large dresser, desk'],
		},
	bathroom1: {
		pretty_name: 'Bathroom 1',
		items: ['2 Tooth Brushes', '1 Role of Toilet paper', 'Irish Spring Bar Soap'],
	},
	bathroom2: {
		pretty_name: 'Bathroom 2',
		items: ['Weeks Worth of Toilet Paper', 'Weird Looking Toilet Paper holder', 'Bag of Bird Food...'],
	},
	kitchen: {
		pretty_name: 'Kitchen',
		furniture: ['Kitchen Table', 'Table Chairs', 'Pantry'],
		appliances: ['Stove', 'Fridge', 'Microwave'],
		contents_fridge: {
			pretty_name: 'What is in my FRIDGE!!!',
			contents: ['Bacon', 'Turkey', 'Alot of pasta', 'Forgotten Biology Experiment'],
				},
	},
	livingroom: {
		pretty_name: 'Living Room',
		furniture: ['couch', 'TV Stand', 'Desk'],
	}
}
p my_duplex
p ''

puts "My Duplex"
p my_duplex[:bedroom1]
p my_duplex[:bedroom2]
p my_duplex[:bathroom1]
p my_duplex[:bathroom2]
p my_duplex[:kitchen]
p my_duplex[:livingroom]
