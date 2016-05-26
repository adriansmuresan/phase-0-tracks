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

//  Driver code
console.log(longestPhrase(["long phrase","longest phrase","longer phrase"]));
console.log(longestPhrase(["car", "bike", "trolly", "train"]))

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
// compare the two objects
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

var obj1 = {name: "Steven", age: 54};
var obj2 = {name: "Tamir", age: 54}
compareObj(obj1,obj2);

