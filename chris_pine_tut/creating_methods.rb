=begin
puts 'Hello, and thank you for taking the time to'
puts 'help me with this experiment. My experiment'
puts 'has to do with the way people feel about'
puts 'Mexican food. Just think about Mexican food'
puts 'and try to answer every question honestly,'
puts 'with either a "yes" or a "no". My experiment'
puts 'has nothing to do with bed-wetting.'
puts

goodAnswer = false
while (not goodAnswer)
  puts 'Do you like eating tacos?'
  answer = gets.chomp.downcase
  if (answer == 'yes' or answer == 'no')
    goodAnswer = true
  else
    puts 'Please answer "yes" or "no".'
  end
end

goodAnswer = false
while (not goodAnswer)
  puts 'Do you like eating burritos?'
  answer = gets.chomp.downcase
  if (answer == 'yes' or answer == 'no')
    goodAnswer = true
  else
    puts 'Please answer "yes" or "no".'
  end
end

goodAnswer = false
while (not goodAnswer)
  puts 'Do you wet the bed?'
  answer = gets.chomp.downcase
  if (answer == 'yes' or answer == 'no')
    goodAnswer = true
    if answer == 'yes'
      wetsBed = true
    else
      wetsBed = false
    end
  else
    puts 'Please answer "yes" or "no".'
  end
end

goodAnswer = false
while (not goodAnswer)
  puts 'Do you like eating chimichangas?'
  answer = gets.chomp.downcase
  if (answer == 'yes' or answer == 'no')
    goodAnswer = true
  else
    puts 'Please answer "yes" or "no".'
  end
end

puts 'Just a few more questions...'

goodAnswer = false
while (not goodAnswer)
  puts 'Do you like eating sopapillas?'
  answer = gets.chomp.downcase
  if (answer == 'yes' or answer == 'no')
    goodAnswer = true
  else
    puts 'Please answer "yes" or "no".'
  end
end

# ask more questions about Mexican food

puts
puts 'DEBRIEFING:'
puts 'Thank you for taking the time to help with'
puts 'this experiment. In fact, this experiment'
puts 'has nothing to do with Mexican food. It is'
puts 'an experiment about bed-wetting. The Mexican'
puts 'food was just there to catch you off guard'
puts 'in the hopes you would answer more honestly.'
puts 'Thanks again.'
puts
puts wetsBed


def sayMoo
  puts 'moooooo.....'
end

sayMoo
sayMoo
puts 'coin-coin'
sayMoo
sayMoo
puts

def sayBoo numOfBoos
  puts 'Booooooooooo....' * numOfBoos
end

sayBoo 13
puts 'oink-oink'
puts

def doubleThis num
  numTimes2 = num*2
  puts num.to_s + ' doubled is ' + numTimes2.to_s
  puts
end

doubleThis 44

def littlePest var
  var = nil
  puts 'HAHA!!! I ruined your variable'
end

var = 'You can\'t touch this (my variable)!'
littlePest var
puts var

returnVal = puts 'This puts returned:'
puts returnVal

# "Take a quick break and write a program to find out what sayMoo returned."
# i have no idea what this means.
# confused - why the 2nd sayCoo doesn't repeat the cooos?
# and how to make it so it doesn't output a blank line to the screen?

def sayCoo numOfCoos
  puts 'cooo..cooo....' * numOfCoos
  'pigeons are rats with wings'
end

x = sayCoo 6
puts x

def sayCoo numOfCoos
  puts 'cooo..cooo....' * numOfCoos
end

x = sayCoo 6
puts x

# number to english
def englishNumber number
  # only numbers from 0 - 100
  if number < 0
    return 'Please enter a number zero or greater.'
  end
  if number > 100
    return 'Please enter a number 100 or lesser.'
  end

  numString = ''

  # "left" is how much of the number we still have left to write out.
  # "write" is the part we are writing out right now.
  # write and left ... get it?
  left = number
  write = left/100 # how many 100s left to write out
  left = left - write*100 # subtract them off

  if write > 0
    return 'one hundred'
  end

  write = left/10 # how many 10s to write out?
  left = left - write*10 # subtract them off

  if write > 0
    if write == 1 # Uh-Oh
      # tenty-two is not a word, twelve is
      # have to make special exception
      if    left == 0
        numString = numString + 'ten'
      elsif left == 1
        numString = numString + 'eleven'
      elsif left == 2
        numString = numString + 'twelve'
      elsif left == 3
        numString = numString + 'thirteen'
      elsif left == 4
        numString = numString + 'fourteen'
      elsif left == 5
        numString = numString + 'fifteen'
      elsif left == 6
        numString = numString + 'sixteen'
      elsif left == 7
        numString = numString + 'seventeen'
      elsif left == 8
        numString = numString + 'eighteen'
      elsif left == 9
        numString = numString + 'nineteen'
      end
      # these took care of the digits column already
      # nothing left to write
      left = 0
    elsif write == 2
      numString = numString + 'twenty'
    elsif write == 3
      numString = numString + 'thirty'
    elsif write == 4
      numString = numString + 'forty'
    elsif write == 5
      numString = numString + 'fifty'
    elsif write == 6
      numString = numString + 'sixty'
    elsif write == 7
      numString = numString + 'seventy'
    elsif write == 8
      numString = numString + 'eighty'
    elsif write == 9
      numString = numString + 'ninety'
    end

    if left > 0
      numString = numString + '-'
    end
  end

  write = left # how many ones left to write out?
  left = 0 # subtract them off

  if write > 0
    if    write == 1
      numstring = numString + 'one'
    elsif write == 2
      numString = numString + 'two'
    elsif write == 3
      numString = numString + 'three'
    elsif write == 4
      numString = numString + 'four'
    elsif write == 5
      numString = numString + 'five'
    elsif write == 6
      numString = numString + 'six'
    elsif write == 7
      numString = numString + 'seven'
    elsif write == 8
      numString = numString + 'eight'
    elsif write == 9
      numString = numString + 'nine'
    end
  end

  if numString == ''
    # only way this happens is if number = 0
    return 'zero'
  end

  # getting this far, have a number between 0 - 100, return numString
  numString
end

puts englishNumber(  0)
puts englishNumber(  9)
puts englishNumber( 10)
puts englishNumber( 11)
puts englishNumber( 17)
puts englishNumber( 32)
puts englishNumber( 88)
puts englishNumber( 99)
puts englishNumber(100)
=end

def englishNumber number
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

  # "left" is what we need to still need to write out
  # "write" is the part we are currently writing out
  left = number
  write = left/100 # 100s left to write out
  left = left - write*100 # subtract them off

  if write > 0
    # SLY TRICK - RECURSION!!!!
    hundreds = englishNumber write
    numString = numString + hundreds + ' hundred'
    # recursion - telling the method to call itself
    # here we call englishNumber write, instead of englishNumber number
    # currently write is the number of hundreds we have to write out
    # so we add hundreds to numString then the string ' hundred'
      # ex: we called englishNumber 1999
      # at this point write = 19, left = 99
      # calling englishNumber write is calling englishNumber 19
      # we write ' hundred' and englishNumber number finishes off the 99

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

puts englishNumber(  0)
puts englishNumber(  9)
puts englishNumber( 10)
puts englishNumber( 11)
puts englishNumber( 17)
puts englishNumber( 32)
puts englishNumber( 88)
puts englishNumber( 99)
puts englishNumber(100)
puts englishNumber(101)
puts englishNumber(234)
puts englishNumber(3211)
puts englishNumber(999999)
puts englishNumber(1000000000000)
