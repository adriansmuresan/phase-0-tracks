// 7.3 Solo Challenge: Algorithm Practices

// ----Release 0: Find the Longest Phrase-----
// write a function that takes an array of words or phrases and returns the longest word 
// or phrase in the array. So if we gave your function the array of ["long phrase","longest phrase","longer phrase"], 
// it would return "longest phrase". This is a logical reasoning challenge, so try to 
// reason through this based on what you already know, rather than Googling the fanciest 
// solution or looking up built-in sorting functions. Note that "some string".length will do what you expect in JS.
// Add driver code that tests your function on a few arrays.

// -------Pseudocode------
// input a set of strings in an array
// output the longest string from the array
// break the array into individual strings
// chesck the length of the string with the .length method and compare it with the last string 
// iterate through the array
// print the longest string

function longestPhrase(strings) {
	initialLength = 0;
	longestString = "" ;
	for (var i = 0; i < strings.length; i++) {
		if (strings[i].length > initialLength) {
			var initialLength = strings[i].length ;
			longestString = strings[i] ;
		}

	}
    return longestString
}

// -------Release 1: Find a Key-Value Match-------
// write a function that takes two objects and checks to see if the objects share at least one key-value pair. 
// (You'll keep adding to this file, so we suggest grouping functions at the top and testing at the bottom of the file.) 
// If we called your function with {name: "Steven", age: 54} and {name: "Tamir", age: 54}, the function 
// would return true, because at least one key-value pair matches between the two objects. If no pairs match 
// (and keep in mind that the two objects may not even have any of the same keys), the function should 
// return false. To make your life easier, don't worry about whether a property is a string ('age') or 
// an identifier name (age). Those can be considered equivalent. Again, try to reason through the problem 
// using the basics you've already learned, rather than looking up slick search functions that will do 
// the job for you. We'd rather see you write code that you actually understand!

// -----Pseudocode---------
// create a function that iterates through an object and if the keys or values are the same returns true, othervise false
// take two objects
// iterate through the first object
// iterate through the second object
// compare the keys and values of the two objects
// if condition is met then returns true
// if not then false

function compareObj(obj1, obj2){
	keysObj1 = Object.keys(obj1);
	keysObj2 = Object.keys(obj2);
	for  ( i = 0; i < keysObj1.length ; i++) {
		valObj1 = obj1[keysObj1[i]];
		valObj2 = obj2[keysObj2[i]];

		if ( keysObj1[i] === keysObj2[i]) {
			if (valObj1 === valObj2) {
				console.log( true + "--" + " This is the same key: " + keysObj1[i] + " This is the same value: " + valObj1 );
			}
			else {
				console.log( false + "--" + " This is the same key: " + keysObj1[i] + " This values don't match: " + valObj1 + " " + valObj2);
			}
		}
		else {
			console.log(false + "--" + "This keys don't match.")
		}
	}
}


// -------Release 2: Generate Random Test Data---------
// Write a function that takes an integer for length, and builds and returns an array of strings of the 
// given length. So if we ran your function with an argument of 3, we would get an array of 3 random 
// words back (the words don't have to be actual sensical English words -- "nnnnfph" totally counts). 
// The words should be of randomly varying length, with a minimum of 1 letter and a maximum of 10 letters. 
// (This involves a new trick, generating a random number, that you'll have to look up, but the solution 
// 	on how to do so is relatively straightforward.)

 // -----------Pseudocode--------
// create a function that takes input an integer for argument
// create an array that stores some strings of given length (integer)
// create a loop that makes an amount of words with length between 1 and 10
// take the words created and add them to an array


function generateRandom(integer) {
	var arrayofStrings = [];
	for (var i = 0 ; i < integer; i++) {
		var rand_word = "";
		num = Math.floor((Math.random()*10)+1);
		for (var x = 0; x < num; x++) {
			alphabet = "abcdefghijklmnopqrstuvwxyz";
			var letter = alphabet[Math.floor((Math.random()*26)+0)]
			    rand_word += letter

		}
		arrayofStrings.push(rand_word)
	}
	return arrayofStrings
}
// Driver code
console.log(longestPhrase(["long phrase","longest phrase","longer phrase"]));
console.log(longestPhrase(["car", "bike", "trolly", "train"]))
console.log("------------------------")
var obj1 = {name: "Steven", age: 54};
var obj2 = {name: "Tamir", age: 54}
compareObj(obj1,obj2);
console.log("-------------------------")
console.log(generateRandom(7));
console.log(generateRandom(10));
console.log(generateRandom(2));

// Add driver code that does the following 10 times: generates an array, prints the array, 
// feeds the array to your "longest word" function, and prints the result.

for (i = 0; i < 10 ; i++) {
	var integer = Math.floor((Math.random()*10)+1);
	var someArray = generateRandom(integer);
	console.log(someArray);
	var newlongestWord = longestPhrase(someArray);
	console.log(newlongestWord);
}









