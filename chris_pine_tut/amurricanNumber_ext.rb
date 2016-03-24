def amurricanNumber number
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
    sextillions = amurricanNumber write
    numString = numString + sextillions + ' sextillion'

    if left > 0
      numString = numString + ' '
    end
  end

  # quintillions
  write = left/1000000000000000000 # quintillions left to write out
  left = left - write*1000000000000000000

  if write > 0
    quintillions = amurricanNumber write
    numString = numString + quintillions + ' quintillion'

    if left > 0
      numString = numString + ' '
    end
  end

  # quadrillions
  write = left/1000000000000000 # quadrillions left to write out
  left = left - write*1000000000000000

  if write > 0
    quadrillions = amurricanNumber write
    numString = numString + quadrillions + ' quadrillion'

    if left > 0
      numString = numString + ' '
    end
  end

  # trillions
  write = left/1000000000000 # trillions left to write out
  left = left - write*1000000000000

  if write > 0
    trillions = amurricanNumber write
    numString = numString + trillions + ' trillion'

    if left > 0
      numString = numString + ' '
    end
  end

  # billions
  write = left/1000000000 # billions left to write out
  left = left - write*1000000000

  if write > 0
    billions = amurricanNumber write
    numString = numString + billions + ' billion'

    if left > 0
      numString = numString + ' '
    end
  end

  # millions
  write = left/1000000 # millions left to write out
  left = left - write*1000000

  if write > 0
    millions = amurricanNumber write
    numString = numString + millions + ' million'

    if left > 0
      numString = numString + ' '
    end
  end

  # thousands
  write = left/1000 # 1000s left to write out
  left = left - write*1000

  if write > 0
    thousands = amurricanNumber write
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
    hundreds = amurricanNumber write
    numString = numString + hundreds + ' hundred'
    # recursion - telling the method to call itself
    # here we call amurricanNumber write, instead of amurricanNumber number
    # currently write is the number of hundreds we have to write out
    # so we add hundreds to numString then the string ' hundred'
      # ex: we called amurricanNumber 1999
      # at this point write = 19, left = 99
      # calling amurricanNumber write is calling amurricanNumber 19
      # we write ' hundred' and amurricanNumber number finishes off the 99

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

puts amurricanNumber(  0)
puts amurricanNumber(  9)
puts amurricanNumber( 10)
puts amurricanNumber( 11)
puts amurricanNumber( 17)
puts amurricanNumber( 32)
puts amurricanNumber( 88)
puts amurricanNumber( 99)
puts amurricanNumber(100)
puts amurricanNumber(101)
puts amurricanNumber(234)
puts amurricanNumber(3211)
puts amurricanNumber(43999999)
puts amurricanNumber(990069999)
puts amurricanNumber(9999504424903999)
puts amurricanNumber(100000000000999999)
puts amurricanNumber(1000000000000)
puts amurricanNumber(1000004352436540000000)
puts amurricanNumber(10030004352436540060001)
