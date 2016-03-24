puts 'This is a Leap Year Calclulator'
puts 'For a given year range the Calculator will list the leap years inclusively.'
puts ''

puts 'starting year:'
start_yr = gets.chomp
puts 'ending year'
end_yr = gets.chomp

leap_yrs = 0
check_yr = start_yr.to_i
yr_list = ''

while check_yr < (end_yr.to_i + 1)
  if (check_yr%4 == 0 and check_yr%100 != 0)
    yr_list = yr_list + ' ' + check_yr.to_s
    leap_yrs = leap_yrs + 1
  else
    if (check_yr%4 == 0 and check_yr%100 == 0 and check_yr%400 == 0)
      yr_list = yr_list + ' ' + check_yr.to_s
      leap_yrs = leap_yrs + 1
    end
  end

  check_yr = check_yr + 1

end

puts 'Betwen and including the years' + ' ' + start_yr.to_s + ' ' + 'to' + ' ' + end_yr.to_s
puts 'There are' + ' ' + leap_yrs.to_s + ' ' + 'leap years.'
puts yr_list
puts ''













