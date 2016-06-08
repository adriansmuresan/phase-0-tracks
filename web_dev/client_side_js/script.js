console.log("Hello World");
var heads = document.getElementsByClassName('headers');
headOne = heads[0]
headTwo = heads[1]
// headOne.style.border = "5px dotted purple";
// headTwo.style.padding = "16px";
// headTwo.style.fontFamily = "Helvetica";
// // headTwo.style.userZoom = "3";
// headTwo.draggable = "true";

function clickColor() {
  var heads = document.getElementsByClassName('headers');
  headOne = heads[0]
  headTwo = heads[1]
  headOne.style.border = "5px dotted purple";
  headTwo.style.border = "5px dotted purple";

}

// clickColor();
headOne.addEventListener("click", clickColor);


var paragraphs = document.getElementsByClassName('paragraph');
pfirst = paragraphs[0]
psecond = paragraphs[1]

function clickColor2() {
  var paragraphs = document.getElementsByClassName('paragraph');
  pfirst = paragraphs[0]
  psecond = paragraphs[1]
  pfirst.style.background = " grey";
  psecond.style.background = "yellow";
}

pfirst.addEventListener("click", clickColor2)
