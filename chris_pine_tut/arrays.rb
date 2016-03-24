# basic array notation
[] # empty array
[5] # array holding a number
['Hello', 'Goodbye'] # array holding 2 strings

flavor = 'vanilla'
[89.9, flavor, [true, false]] # array holding number, variable & array

names = ['Ada', 'Belle', 'Chris']

puts names
puts names[0]
puts names[1]
puts names[2]
puts names[3] # refers to the nil object since nothing is in this slot
              # so when this prints it prints a blank line

languages = ['English', 'German', 'Ruby']

languages.each do |lang|
  puts 'I love ' + lang + '!'
  puts 'Don\'t you?'
end

puts 'And let\'s hear it for C++!'
puts '...'
puts

3.times do
  puts 'Hip Hop Hooray!'
end
puts

foods = ['artichoke', 'brioche', 'caramel']
junk_foods = [['Big Mac', 'Whopper', 'Triple'], ['Doritos', 'Tostitos', 'Santitas'], ['Coke', 'Pepsi', '7Up']]

puts foods
puts
puts foods.to_s
puts
puts foods.join(', ')
puts
puts foods.join(' :) ') + ' 8)'
puts
puts junk_foods.join(', ')
puts

# wastes computing time, puts nothing to screen
200.times do
  puts []
end

favorites = []
favorites.push 'raindrops on roses'
favorites.push 'whiskey on kittens'

puts favorites[0]
puts favorites.last
puts favorites.length

puts favorites.pop
puts favorites
puts favorites.length
puts















