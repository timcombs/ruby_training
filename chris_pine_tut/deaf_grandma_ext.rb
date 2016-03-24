response = "HUH?!? SPEAK UP, SONNY!"
you_say = ''
bye_count = 0

puts 'Your Grandma awaits you in a nice rocking chair by a window.'
while bye_count < 3
    you_say = gets.chomp

    if you_say == 'BYE'
      bye_count = bye_count + 1
    else
      bye_count = 0
    end

    if you_say == you_say.upcase
      rand_year = (rand(21) + 1930).to_s
      puts 'NO, NOT SINCE' + ' ' + rand_year + '!'
    else
      puts response
    end

end
puts 'You walk away because you realize that Grandma can\'t hear a thing.'
puts ''

