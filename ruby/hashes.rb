#Enter the details of any given client
#ask the user for all of this info
puts 'What is your name?'
  name = gets.chomp.capitalize


puts 'What is your age?'
  age = gets.chomp.to_i

puts 'What is the number of your children?'
  nmbr_children = gets.chomp.to_i

puts 'What is your decor theme?'
  decor_theme = gets.chomp

puts 'What is your favorite color?'
   color = gets.chomp.to_s

puts 'Do you like vintage furniture?( true/false)'
   vintage = gets.chomp.to_s

puts 'How many light fixtures do you like?'
    light_fixtures = gets.chomp.to_i

#create hash with the user input
user_input = {
	name:  '#{name}',
	age:  '#{age}',
	nmbr_children:  '#{nmbr_children}',
	decor_theme:  '#{decor_theme}',
	color:  '#{color}',
	vintage:  '#{vintage}',
	light_fixtures:  '#{light_fixtures}',
}
#Print the hash back out to the screen when the designer has answered all of the questions.