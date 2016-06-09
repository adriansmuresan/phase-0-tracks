$(document).ready(function() {
  $('h3').click(function() {
  	$('h3').hide().delay(500).fadeIn(1400);
  });
  $('h1,h2').mouseenter(function() {
  	$(this).css("background-color", "white");
  	$(this).css("color", "grey");
  });
  $('h1,h2').mouseleave(function() {
  	$(this).css("background-color", "orange");
  	$(this).css("color", "grey");
  });
  $('button').click(function() {
     $('ol').append('<li>New item</li>');
  });

});