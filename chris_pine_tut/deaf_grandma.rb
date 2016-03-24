response = "HUH?!? SPEAK UP, SONNY!"
you_say = ''

puts 'Your Grandma awaits you in a nice rocking chair by a window.'
while you_say != 'BYE'
  you_say = gets.chomp
  if you_say == you_say.upcase
    rand_year = (rand(21) + 1930).to_s
    puts 'NO, NOT SINCE' + ' ' + rand_year + '!'
  else
    puts response
  end
end
puts 'You walk away because you realize that Grandma can\'t hear a thing.'
puts ''

