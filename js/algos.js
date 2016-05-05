// 7.3 Solo Challenge: Algorithm Practice

// ============Release 0: Find the Longest Word==============

// Add a file called algos.js to the phase-0-tracks/js folder.
// In algos.js, write a function that takes an array of words or phrases and returns the longest word in the array.
// So if we gave your function the array of ["long phrase","longest phrase","longer phrase"], it would return "longest phrase".
// This is a logical reasoning challenge, so try to reason through this based on what you already know,
// rather than Googling the fanciest solution or looking up built-in sorting functions.
// Note that "some string".length will do what you expect in JS.
// Add driver code that tests your function on a few arrays.

// ====Pseudocode=======
// create a function that sorts through an array
// input a few strings
// output the longest string
// brake the array into individual strings
// check the length of each string with the .length method and compare it with the last string
// iterate through the array
// print out the longest string

function longestWord(strings) {
    var initialLength = 0;
    var longestString = "" ;
  for (var i = 0; i < strings.length; i++) {
    if (strings[i].length > initialLength) {
      var initialLength = strings[i].length;
      longestString = strings[i];
    }
  }
  return longestString
}

// Driver code
console.log(longestWord(["Ruby", "JavaScript", "HTML","CSS"]))
console.log(longestWord(['Hi', 'Hello','Hey', 'Howdy']))

// ==================Release1: Find a Key-Value Match===================
// In algos.js, write a function that takes two objects and checks to see if the objects share at least one key-value pair.
// (You'll keep adding to this file, so we suggest grouping functions at the top and testing at the bottom of the file.)
// If we called your function with {name: "Steven", age: 54} and {name: "Tamir", age: 54}, the function would return true,
// because at least one key-value pair matches between the two objects.
// If no pairs match (and keep in mind that the two objects may not even have any of the same keys), the function should return false.
// To make your life easier, don't worry about whether a property is a string ('age') or an identifier name (age).
// Those can be considered equivalent. Again, try to reason through the problem using the basics you've already learned,
// rather than looking up slick search functions that will do the job for you.
// We'd rather see you write code that you actually understand!
// Add some driver code that tests both outcomes of your function.

// =========Pseudocode============
// create a function that iterates through an object and if the keys or values are the same returns true, othervise false
// take two objects
// iterate through the first object
// iterate through the second object
// compare the two objects
// if condition is met then returns true
// if not then false

function Compare(obj1, obj2) {
  for(var i in obj1){
        if(obj1.hasOwnProperty(i)){
            if(obj1[i] !== obj2[i]){
                return false;
            }
        }
    }
    for(var i in obj2){
        if(obj2.hasOwnProperty(i)){
            if(obj1[i] !== obj2[i]){
                return false;
            }
        }
    }
    return true;

}

// =======Driver code===============
console.log(Compare({name:'Adrian', age:'35', location:'Chicago'}, {name:'Chris', age:'28',location:'Chicago'}))
console.log(Compare({name:'Adrian', age:'35', location:'Chicago'}, {name:'Adrian', age:'35',location:'Chicago'}))
