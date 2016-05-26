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







