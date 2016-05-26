var colors = ["blue", "green", "orange", "white"];
var horses = ["Ed", "Joe", "Jeff", "Bob"];

colors.push("purple")

horses.push("Mike")
// console.log(horses);

var horseObject = {};
for(var x = 0;x < horses.length; x++){
  horseObject[horses[x]] = colors[x];
}

console.log(horseObject)

function Car(model,year,color) {
  this.model = model;
  this.year = year;
  this.color = color;
  this.drive = function() {console.log("Vrooommmm!!!");};
}

var newCar = new Car ("Bmw", "2015", "Black");
console.log(newCar);
console.log("This car is a " + newCar.year + ' ' + newCar.color + ' ' + newCar.model + '.');
newCar.drive();
console.log("------------")

var otherCar = new Car ("Mercedes", "2008", "Red");
console.log(otherCar);
console.log("This car is a " + otherCar.year + ' ' + otherCar.color +' ' + otherCar.model + '.');
otherCar.drive();

console.log("-------------")
// add loop through the keys and values 
for (var key in otherCar) {
	console.log("The " + key + " has this value " + otherCar[key]);
}


