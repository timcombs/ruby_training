def britishNumber number
  if number < 0 # stops negative numbers
    return 'Please enter a number that isn\'t negative'
  end
  if number == 0
    return 'zero'
  end

  numString = ''

  onesPlace = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  tensPlace = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

  left = number

  # sextillions
  write = left/1000000000000000000000 # sextillions left to write out
  left = left - write*1000000000000000000000

  if write > 0
    sextillions = britishNumber write
    numString = numString + sextillions + ' sextillion'

    if left > 0
      numString = numString + ' and '
    end
  end

  # quintillions
  write = left/1000000000000000000 # quintillions left to write out
  left = left - write*1000000000000000000

  if write > 0
    quintillions = britishNumber write
    numString = numString + quintillions + ' quintillion'

    if left > 0
      numString = numString + ' and '
    end
  end

  # quadrillions
  write = left/1000000000000000 # quadrillions left to write out
  left = left - write*1000000000000000

  if write > 0
    quadrillions = britishNumber write
    numString = numString + quadrillions + ' quadrillion'

    if left > 0
      numString = numString + ' and '
    end
  end

  # trillions
  write = left/1000000000000 # trillions left to write out
  left = left - write*1000000000000

  if write > 0
    trillions = britishNumber write
    numString = numString + trillions + ' trillion'

    if left > 0
      numString = numString + ' and '
    end
  end

  # billions
  write = left/1000000000 # billions left to write out
  left = left - write*1000000000

  if write > 0
    billions = britishNumber write
    numString = numString + billions + ' billion'

    if left > 0
      numString = numString + ' and '
    end
  end

  # millions
  write = left/1000000 # millions left to write out
  left = left - write*1000000

  if write > 0
    millions = britishNumber write
    numString = numString + millions + ' million'

    if left > 0
      numString = numString + ' and '
    end
  end

  # thousands
  write = left/1000 # 1000s left to write out
  left = left - write*1000

  if write > 0
    thousands = britishNumber write
    numString = numString + thousands + ' thousand'

    if left > 0
      numString = numString + ' and '
    end
  end

  # "left" is what we need to still need to write out
  # "write" is the part we are currently writing out
  write = left/100 # 100s left to write out
  left = left - write*100 # subtract them off

  if write > 0
    # SLY TRICK - RECURSION!!!!
    hundreds = britishNumber write
    numString = numString + hundreds + ' hundred'
    # recursion - telling the method to call itself
    # here we call britishNumber write, instead of britishNumber number
    # currently write is the number of hundreds we have to write out
    # so we add hundreds to numString then the string ' hundred'
      # ex: we called britishNumber 1999
      # at this point write = 19, left = 99
      # calling britishNumber write is calling britishNumber 19
      # we write ' hundred' and britishNumber number finishes off the 99

    if left > 0
      # so we write with 251 with a space between hundred & fifty-one
      numString = numString + ' and '
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

puts britishNumber(  0)
puts britishNumber(  9)
puts britishNumber( 10)
puts britishNumber( 11)
puts britishNumber( 17)
puts britishNumber( 32)
puts britishNumber( 88)
puts britishNumber( 99)
puts britishNumber(100)
puts britishNumber(101)
puts britishNumber(234)
puts britishNumber(3211)
puts britishNumber(43999999)
puts britishNumber(990069999)
puts britishNumber(9999504424903999)
puts britishNumber(100000000000999999)
puts britishNumber(1000000000000)
puts britishNumber(1000004352436540000000)
puts britishNumber(10030004352436540060001)
