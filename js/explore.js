//creating a reverse string feature in javascript

//var string = "Hello World";
//console.log(string) //Print successful
//Tested the split feature to turn my string into an array
//var arrString = string.split("");
//console.log(arrString);
//Used reverse to reverse my string array and then print out the result
//var newString = arrString.reverse();
//console.log(newString);
//Turned the array back into a string using join
//var newString = newString.join('');
//newString = newString.split(",");
//console.log(newString);

//function Reverse(word) {
	
	//console.log("Your current word is", word);
	
	//this.make = make;
	//this.model = model;
	//this.year = year;
	//this.color = color;
	
	//this.honk = function() { console.log("Honk Honk"); };
//}
//created a function that turns a string into an array, reverses the array, and then turns it back into a string

function Reverse(word) {

	this.word = word;
	//console.log(word) 
	word = word.split("");
	//console.log(word);
	word = word.reverse();
	//console.log(word);
	word = word.join('');
	//console.log(word);
	this.nword = word



}
var word = "hello";
var newword1 = new Reverse(word);
console.log(newword1.nword)

if ( word == newword1.nword ) {
	console.log("Looks like you have a palindrome");
}else {
	console.log("Looks backwards to me!!");
}

var word = "racecar"
var newword2 = new Reverse(word);
console.log(newword2.nword)

if ( word == newword2.nword ) {
	console.log("Looks like you have a palindrome!");
}else {
	console.log("Looks backwards to me!!");
}
//console.log(newword.word);



