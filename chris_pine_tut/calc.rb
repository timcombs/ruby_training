puts 1+2

puts 1.0 + 2.0
puts 2.0 * 3.0
puts 5.0 - 8.0
puts 9.0 / 2.0

puts 1+2
puts 2*3
puts 5-8
puts 9/2

puts 5 * (12-8) + -15
puts 98 + (59872 / (13*8)) * -52

# hours in a year
puts 24 * 365
# minutes in an avg decade - don't forget leap years!
# some decades have 3, some have 2!
puts 24 * 60 * 365 * 10 + ((10/4) * 60 * 24)

# how many seconds old am i
# as of 8:46a 3/2/16 - born 8:46p 9/9/1967
# don't forget leap years
# 31536000 sec/yr[no leap days] - 86400 sec/day - 3600 sec/hr - 60 sec/min
puts 'rough estimate'
puts 48.5 * 365.0 * 24.0 * 60.0 * 60.0
puts 'online calculator'
puts 1529841600
# total sec lived = yrs * sec/yr + add.days * sec/day + add.hr * sec/hr + add.min * sec/min + leap days * sec/day
puts 'my calc'
puts (31536000 * 48) +
      (((31+28+1) + (21+31+30+31)) * 86400) +
      ((3 + 8) * 3600) +
      ((14 + 46) * 60) +
      (((48/4)+1) * 86400)

# how many chocolates do i hope to eat in my life
puts 10 * 12 * 80

# if 1246million seconds old, how old is that?
# not sure how to tease out the days, months, years w/simple arith
puts '1246000000 har har'
puts 1246000000.0 / (86400.0 * 365.25)
puts 'years'
