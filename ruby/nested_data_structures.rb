=begin
	Design a program that uses a mixure of hashes and array data types
	# Build out your duplex with all the rooms
	#Create a key for furniture and a  key for appliances
	#Setup an array in the furitur and appliance keys listing items
	#print the result
=end
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