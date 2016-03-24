num_birthday = 0
spanks = 1
secs_yr = Time.mktime(1999, 1, 1) - Time.mktime(1998, 1, 1)
secs_lpyr = Time.mktime(2001, 1, 1) - Time.mktime(2000, 1, 1)

puts 'In what year were you born?'
birth_yr = gets.chomp.to_i
puts 'In what month were you born (please give number, not name)?'
birth_month = gets.chomp.to_i
puts 'On what day were you born?'
birth_day = gets.chomp.to_i
puts

currentTime = Time.new
birthTime = Time.mktime(birth_yr, birth_month, birth_day)
timeDiff = currentTime - birthTime
check_yr = birth_yr

while timeDiff > 0
  if (check_yr%4 == 0 and check_yr%100 != 0)
    timeDiff = timeDiff - secs_lpyr
    leap = true
  elsif (check_yr%4 == 0 and check_yr%400 == 0)
    timeDiff = timeDiff - secs_lpyr
    leap = true
  else
    timeDiff = timeDiff - secs_yr
    leap = false
  end

  if (leap and timeDiff < secs_lpyr)
    timeDiff = 0
  elsif (!leap and timeDiff < secs_yr)
    timeDiff = 0
  end

  check_yr = check_yr - 1
  num_birthday = num_birthday + 1
end

num_spanks = num_birthday
puts 'Today is ' + currentTime.to_s
puts 'You were born on ' + birthTime.to_s
puts 'You are ' + num_birthday.to_s + ' years old.'
while spanks <= num_spanks
  puts 'SPANK!' + ' ' + spanks.to_s + '!'
  spanks = spanks + 1
end
puts 'HAPPY BIRTHDAY!!!'


