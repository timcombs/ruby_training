def bottlesNumber number
  numString = ''

  onesPlace = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  tensPlace = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

  left = number

  # thousands
  write = left/1000 # 1000s left to write out
  left = left - write*1000

  if write > 0
    thousands = bottlesNumber write
    numString = numString + thousands + ' thousand'

    if left > 0
      numString = numString + ' '
    end
  end

  # "left" is what we need to still need to write out
  # "write" is the part we are currently writing out
  write = left/100 # 100s left to write out
  left = left - write*100 # subtract them off

  if write > 0
    # SLY TRICK - RECURSION!!!!
    hundreds = bottlesNumber write
    numString = numString + hundreds + ' hundred'
    # recursion - telling the method to call itself
    # here we call bottlesNumber write, instead of bottlesNumber number
    # currently write is the number of hundreds we have to write out
    # so we add hundreds to numString then the string ' hundred'
      # ex: we called bottlesNumber 1999
      # at this point write = 19, left = 99
      # calling bottlesNumber write is calling bottlesNumber 19
      # we write ' hundred' and bottlesNumber number finishes off the 99

    if left > 0
      # so we write with 251 with a space between hundred & fifty-one
      numString = numString + ' '
    end
  end

  write = left/10 # 10s left to write out
  left = left - write*10 # subtract them off

  if write > 0
    if ((write == 1) and (left > 0))
      # have to make exception for the "teens"
      numString = numString + teenagers[left - 1]
      # -1 because array, teenagers[3] = 14 not 13
      # took care of the ones' column already
      left = 0
    else
      numString = numString + tensPlace[write - 1]
      # -1 cuz of array, tensPlace[3] = 40 not 30
    end

    if left > 0
      # so we write hyphenated numbers
      numString = numString + '-'
    end
  end

  write = left # 1s left to write out
  left = 0 # subtract off those 1s

  if write > 0
    numString = numString + onesPlace[write - 1]
    # -1 cuz of array, onesPlace[3] is 4 not 3
  end

  numString # return the written number
end

puts 'Welcome to the Bottles of Beer sing-a-long!'
puts 'Please input a number from 1 to 9999 and sing along!!'

bottles = gets.chomp.to_i

if bottles < 0 # stops negative numbers
  puts 'Please enter a positive number.'
elsif bottles > 9999
  puts 'Please enter a number that is less than 10,000.'
elsif
  while (bottles != 0 and bottles < 9999)
    bottle_now = bottlesNumber bottles
    bottle_next = bottlesNumber(bottles - 1)

    if bottles > 2
      lyric1 = bottle_now.capitalize + ' bottles of beer on the wall, ' + bottle_now + ' bottles of beer.'
      lyric2 = 'Take one down and pass it around, ' + bottle_next + ' bottles of beer on the wall.'
    elsif bottles == 2
      lyric1 = bottle_now.capitalize + ' bottles of beer on the wall, ' + bottle_now + ' bottles of beer.'
      lyric2 = 'Take one down and pass it around, ' + bottle_next + ' bottle of beer on the wall.'
    elsif bottles == 1
      lyric1 = bottle_now.capitalize + ' bottle of beer on the wall, ' + bottle_now + ' bottles of beer.'
      lyric2 = 'Take one down and pass it around, no more bottles of beer on the wall.'
    end

    puts lyric1
    puts lyric2
    puts

    bottles = bottles - 1
  end
  puts 'No more bottles of beer on the wall, no more bottles of beer.'
  puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'
end
