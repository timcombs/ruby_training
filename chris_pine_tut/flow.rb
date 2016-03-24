=begin
# comparison methods
puts 1 > 2
puts 2 < 1
puts 5 >= 5
puts 5 <= 4
puts 1 == 1
puts 2 != 1
puts ''

puts 'cat' < 'dog'
puts 'DOG' < 'cat'
puts ''

# if statements
puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'
if name == 'Chris'
  puts 'What a lovely name!'
end
puts ''

# if else statements
puts 'I am a fortune-teller. Tell me your name:'
name = gets.chomp
if name == 'Chris'
  puts 'I see great things in your future.'
else
  puts 'Your future is....Oh my! Look at the time!'
  puts 'I really have to go, sorry!'
end
puts ''


# shows how if/else statements are combined with comparison methods
puts 'Hello, welcome to 7th grade Coding.'
puts 'My name is Mrs. Gabbard. And your name is...?'
name = gets.chomp

if name == name.capitalize
  puts 'Please take a seat, ' + name + '.'
else
  puts name + '? You mean ' + name.capitalize + ', right?'
  puts 'Don\'t you even know how to spell your name??'
  reply = gets.chomp

  if reply.downcase == 'yes'
    puts 'Hmmph! Well, sit down!'
  else
    puts 'GET OUT!!'
  end
end
puts ''

# repeats user input until command == 'bye'
# if statement makes sure blank lines are not puts'ed
command = ''

while command != 'bye'
  if command != ''
    puts command
  end
  command = gets.chomp
end

puts 'Come again soon!'
puts ''


# adding more if/else statements to check multiple conditions
puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'
if name == 'Chris'
  puts 'What a lovely name!'
else
  if name == 'Katy'
    puts 'What a lovely name!'
  end
end
puts ''
=end

# combining conditionals in one line
puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'
if (name == 'Chris' or name == 'Katy')
  puts 'What a lovely name!'
end
puts ''

# logical operators
iAmChris = true
iAmPurple = false
iLikeFood = true
iEatRocks = false

puts (iAmChris and iLikeFood)
puts (iLikeFood and iEatRocks)
puts (iAmPurple and iLikeFood)
puts (iAmPurple and iEatRocks)
puts
puts (iAmChris or iLikeFood)
puts (iAmChris or iEatRocks)
puts (iAmPurple or iLikeFood)
puts (iAmPurple or iEatRocks)
puts
puts (not iAmPurple)
puts (not iAmChris)














