myString = '...you can say that again...'
puts myString
puts myString

name = 'Patricia Rosanna Jessica Mildred Oppenheimer'
puts 'My name is ' + name + '.'
puts 'Wow! ' + name + ' is a really long name!'

composer = 'Mozart'
puts composer + ' was "da BOMB", in his day.'

composer = 'Beethoven'
puts 'But I prefer ' + composer + ', personally.'

var = 'just another ' + 'string'
puts var

var = 5 * (1 + 2)
puts var

var1 = 8
var2 = var1
puts var1
puts var2

puts ''

var1 = 'eight'
puts var1
puts var2

# converting strings & numbers
# .to_s converts value to string
# .to_i converts value to integer
# .to_f converts value to float

var1 = 2
var2 = '5'
puts var1.to_s + var2
puts ''

var1 = 2
var2 = '5'
puts var1.to_s + var2
puts var1 + var2.to_i
puts ''

puts '15'.to_f
puts '99.999'.to_f
puts '99.999'.to_i
puts ''
puts '5 is my favorite number!'.to_i
puts 'Who asked you about 5 or whatever?'.to_i
puts 'Your mama did.'.to_f
puts ''
puts 'stringy'.to_s
puts 3.to_i
puts ''
puts '3 is a magic number'.to_f
puts 'Who asked you about 5 or 3 or whatever?'.to_f

puts 'Hello there, and what\'s your name?'
name = gets.chomp
puts 'Your name is ' + name + '? What a lovely name!'
puts 'Pleased to meet you, ' + name + '. :)'

puts 'Hello there, and what\'s your name?'
name = gets
puts 'Your name is ' + name.chomp + '? What a lovely name!'
puts 'Pleased to meet you, ' + name.chomp + '. :)'
puts ''
puts ''

puts 'Hello, I need to collect a bit of personal information.'
puts 'What is your first name?'
first_name = gets.chomp
puts 'What is your last name?'
last_name = gets.chomp
puts 'What is your middle name?'
middle_name = gets.chomp
puts 'Well, ' + first_name + ' ' + middle_name + ' ' + last_name + ' it is nice to make your aquaintance.'
puts ''
puts 'Let us begin.'
puts ''
puts 'What is your favorite color?'
fav_color = gets.chomp
puts 'What is your favorite number?'
fav_number = gets.chomp.to_i
puts ''
better_number = fav_number + 1
puts 'Well, ' + first_name + ' Your favorite color is ' + fav_color + '.'
puts 'That is a great color!'
puts 'However, I believe that a better favorite number is ' + better_number.to_s + '.'
puts 'For what it\'s worth.'








