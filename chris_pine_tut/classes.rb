=begin
a = Array.new + [12345]
b = String.new + 'hello'
c = Time.new

puts 'a = ' + a.to_s
puts 'b = ' + b.to_s
puts 'c = ' + c.to_s
puts

time1 = Time.new
time2 = time1 + 60
time3 = Time.mktime(2016, 2, 30)
time4 = Time.mktime(1967, 9, 9, 20, 46)

puts 'time 1 ' + time1.to_s
puts 'time 2 ' + time2.to_s
puts 'time 3 ' + time3.to_s
puts 'time 4 ' + time4.to_s

puts time3 - time1

if time4 < time3
  puts 'hey old man'
end

timeForever = time4 + 1000000000
puts timeForever
puts
puts
=end

colorArray = []
colorHash = {}

colorArray[0] = 'red'
colorArray[1] = 'green'
colorArray[2] = 'blue'
colorHash['strings'] = 'red'
colorHash['numbers'] = 'green'
colorHash['keywords'] = 'blue'

colorArray.each do |color| # can i get at the index same way as hash?
  puts color
end
colorHash.each do |codeType, color|
  puts codeType + ': ' + color
end

colorHash['football'] = 'crimson'
colorHash['basketball'] = 'orange'
colorHash['hockey'] = 'white'

colorHash.each do |typeCode, color|
  puts typeCode + ': ' + color
end

weirdHash = Hash.new

weirdHash[12] = 'monkeys'
weirdHash[[]] = 'emptiness'
weirdHash[Time.new] = 'no time like the present'

weirdHash.each do |strangeCode, color|
  puts strangeCode
  puts color
  puts
end

# har har - explanation how to add a method to a class of objects
class Integer
  def to_eng
    if self == 5
      english = 'five'
    else
      english = 'fifty-eight'
    end
  end
end

puts 5.to_eng
puts 58.to_eng
puts 6.to_eng

class Die1
  def roll
    1 + rand(6)
  end
end

dice = [Die1.new, Die1.new]

dice.each do |die1|
  puts die1.roll
end

puts
puts

class Die
  def initialize
    roll # this is recursive, but could also be hard-coded
  end

  def roll
    @numberShowing = 1 + rand(6)
  end

  def showing
    @numberShowing
  end

  def cheat
    puts 'pick the number you want to show'
    puts 'between 1 - 6'
    cheatNum = gets.chomp.to_i
    puts

    if (cheatNum < 0 or cheatNum > 6)
      puts 'way to get caught cheating!'
    else
      @numberShowing = cheatNum
    end
  end
end

puts Die.new.showing
puts

die = Die.new
die.roll
puts die.showing
puts die.showing
die.roll
puts die.showing
puts die.showing

die.cheat
puts die.showing
puts die.showing










