
var phrases = ["Bacon", "Pork", "Chicken", "Beef", "Lamb", "Tofo"];
//wrote some tests to verify javascript will print out the info I am expecting
console.log(phrases[0]);
console.log(phrases.length);
console.log(phrases[0].length);

//This method should iterate through the array and return the longest word. 
//The function appears to be getting stuck on the word pork
function Longword(array) {
	var lword = array[0];
	var i = 0;
	while (i < array.length) {
		var word = array[i]; 
   			if (array[i].length < lword.length ) {
   			lword = word;
			}
			i++;
		}
		console.log(lword);
}

var long_word = Longword(phrases);

var thing1 = ["Ricky", 35];
console.log(thing1);
var thing2 = ["Bobby", 35];
console.log(thing2);
//Pasted in arrays for two different people and compared them to each other by index position
function Compar(person1, person2) {
	var i = 0;
	var matching_data = false;
	while (i < 2) {
	if (person1[i] == person2[i]) {
		matching_data = true;
	}
	i++;
	}
	console.log(matching_data);
}
var comp = Compar(thing1, thing2);

//PUlled an array of the months to use for the random array length generator modified the words a little
function rand_Array(integer){
	var monthNames = [ "Q", "Yo", "Jan", "Febry", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" ]; 
	var i = 0;
	var new_Array = [];
	while (i < integer){
		//Found a random feature in documentation that I am using to randomize the results
		var	random = Math.floor(Math.random() * 14);
		new_Array.push(monthNames[random]);
		i++; 
	}
	//this will print the array that was resently filled by the operation above
	console.log(new_Array)
}
//Made a function to run the rand_Array 10 times
function run_Array(x){
var i = 0;
while (i < x){
var rand = rand_Array(3);
i++;
}
}
var run = new run_Array(10);