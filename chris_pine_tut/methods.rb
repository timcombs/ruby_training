# What methods have I seen before I start this chapter?
# chomp, to_s, to_i, puts, gets, to_f, +, -, *, /
# YAY!

=begin
puts 'hello '.+ 'world!!'
puts (10.* 9).+ 9
puts ''

# self.puts does not work in ruby 2.0.0

# various string methods
var1 = 'stop'
var2 = 'stressed'
var3 = 'Can you pronounce this sentence backwards?'

puts var1.reverse
puts var2.reverse
puts var3.reverse
puts var1
puts var2
puts var3
puts ''

puts 'What is your full name?'
name = gets.chomp
puts 'Did you know there are ' + name.length.to_s + ' characters in your name, ' + name + '?'
puts ''

puts 'What is your first name?'
first_name = gets.chomp
puts 'What is your last name?'
last_name = gets.chomp
puts 'What is your middle name?'
middle_name = gets.chomp

# does the distributive property always work for methods like this?
name_length = (first_name + middle_name + last_name).length.to_s
puts 'Did you know there are ' + name_length + ' characters in your name, ' + first_name + '?'
=end

# playing with changing a letter case
letters = 'aAbBcCdDeEfF'
puts letters
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts ' a'.capitalize
puts letters
puts ''

# playing with text centering
lineWidth = 50
puts(        'Should they may be they might if they delight'.center(lineWidth))
puts('In why they must see it be there not only necessarily'.center(lineWidth))
puts(             'But which they might in which they might'.center(lineWidth))
puts(      'For which they might delight if they look there'.center(lineWidth))
puts(              'And they see there that they look there'.center(lineWidth))
puts(              'To see it be there which it is if it is'.center(lineWidth))
puts(                       'Which may be where where it is'.center(lineWidth))
puts(           'If they do not occasion it to be different'.center(lineWidth))
puts(                                     'From what it is.'.center(lineWidth))
puts 'Gertrude Stein'
puts ''

# playing with text justification
fred = 80
str = '--> text <--'
puts str.ljust fred
puts str.center fred
puts str.rjust fred
puts str.ljust(fred/2) + str.rjust(fred/2)
puts ''

# building a table of contents
lineWidth = 50
pg = 'page'
ch = 'Chapter'
s = ' '

puts (        'Table of Contents'.center(lineWidth))
puts ''
puts ''
puts (  ch + s + '1:  Numbers').ljust(lineWidth/2) + (  pg + s + '1').rjust(lineWidth/2)
puts (  ch + s + '2:  Letters').ljust(lineWidth/2) + ( pg + s + '72').rjust(lineWidth/2)
puts (ch + s + '3:  Variables').ljust(lineWidth/2) + (pg + s + '118').rjust(lineWidth/2)
puts ''

# more math methods
puts 5**2
puts 5**0.5
puts 7/3
puts 7%3
puts 365%7
puts ''

# modulus using float
# i do not understand what is going on here
puts 42.435/2.3
puts (42.435/2.3).to_i
puts 42.435%2.3
puts ''
puts 99.0/2.9
puts (99.0/2.9).to_i
puts 99.0%2.9
puts ''
puts 99.0/3.0
puts (99.0/3.0).to_i
puts 99.0%3.0
puts ''

puts ((5-2).abs)
puts ((2-5).abs)
puts ''

puts rand
puts rand
puts rand
puts(rand(101))
puts(rand(101))
puts(rand(101))
puts(rand(1))
puts(rand(1))
puts(rand(1))
puts ''
puts('The meteorologist said there is a ' + rand(101).to_s + '% chance of rain,')
puts('but you can never trust a meteorologist.')
puts ''

srand 12
puts(rand(101))
puts(rand(12))
puts(rand(25))
puts(rand(-45))
puts ''
srand 13
puts(rand(101))
puts(rand(12))
puts(rand(25))
puts(rand(-45))
puts ''
srand 13
puts(rand(101))
puts(rand(12))
puts(rand(25))
puts(rand(-45))
puts ''
srand 12
puts(rand(101))
puts(rand(12))
puts(rand(25))
puts(rand(-45))
puts ''
srand 0
puts(rand(101))
puts(rand(12))
puts(rand(25))
puts(rand(-45))
puts ''
puts(rand(101))
puts(rand(12))
puts(rand(25))
puts(rand(-45))
puts ''

puts(Math::PI)
puts(Math::E)
puts(Math.cos(Math::PI/3))
puts(Math.tan(Math::PI/4))
puts(Math.log(Math::E**2))
puts((1 + Math.sqrt(5))/2)

















