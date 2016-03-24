bottles = 99
bottle_string1 = 'bottles'
bottle_string2 = 'bottle'

while bottles != 0
  if bottles > 2
    bottle_now = bottles.to_s
    bottle_next = (bottles - 1).to_s
    bottle_text1 = bottle_string1
    bottle_text2 = bottle_string1
    bottle_text3 = bottle_string1
  else
    if bottles == 2
      bottle_now = bottles.to_s
      bottle_next = (bottles - 1).to_s
      bottle_text1 = bottle_string1
      bottle_text2 = bottle_string1
      bottle_text3 = bottle_string2
    else
      bottle_now = bottles.to_s
      bottle_next = 'no more'
      bottle_text1 = bottle_string2
      bottle_text2 = bottle_string2
      bottle_text3 = bottle_string1
    end
  end
  puts (bottle_now + ' ' + bottle_text1 + ' ' + 'of beer on the wall, ' + bottle_now + ' ' + bottle_text1 + ' ' + 'of beer.')
  puts ('Take one down and pass it around,' + ' ' + bottle_next + ' ' +bottle_text3 + ' ' + 'of beer on the wall.')
  puts ''
  bottles = bottles - 1
end
puts 'No more bottles of beer on the wall, no more bottles of beer.'
puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'
puts ''
