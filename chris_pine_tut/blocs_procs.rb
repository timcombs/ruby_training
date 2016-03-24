 toast = Proc.new do
  puts 'Cheers!'
end

toast.call
toast.call
toast.call
puts ''


do_you_like = Proc.new do |a_good_thing|
  puts 'I *really* like ' + a_good_thing + '!'
end

do_you_like.call('chocolate')
do_you_like.call('ruby')
puts ''

def do_self_importantly(some_proc)
  puts 'Everybody just HOLD ON! I have something to do...'
  some_proc.call
  puts 'OK, everyone, I\'m done. Continue doing what you are doing.'
  puts ''
end

some_hello = Proc.new do
  puts 'hello'
end

do_goodbye = Proc.new do
  puts 'goodbye'
end

do_self_importantly(some_hello)
do_self_importantly(do_goodbye)
puts ''

def maybe_do(some_proc)
  if rand(2) == 0
    some_proc.call
  end
end

def twice_do(some_proc)
  some_proc.call
  some_proc.call
end

wink = Proc.new do
  puts '<wink>'
end

glance = Proc.new do
  puts '<glance>'
end

maybe_do wink
maybe_do glance
twice_do wink
twice_do glance

def do_until_false(first_input, some_proc)
  input = first_input
  output = first_input

  while output
    input = output
    output = some_proc.call(input)
  end

  input
end

build_array_of_squares = Proc.new do |array|
  last_number = array.last
  if last_number <= 0
    false
  else
    array.pop
    array.push(last_number * last_number)
    array.push(last_number - 1)
  end
end

always_false = Proc.new do |just_ignore_me|
  false
end

puts do_until_false([5], build_array_of_squares).inspect
puts do_until_false('I\'m writing this at 3:00am; someone slap me!', always_false)
puts ''

def compose(proc1, proc2)
  Proc.new do |x|
    proc2.call(proc1.call(x))
  end
end

square_it = Proc.new do |x|
  x * x
end

double_it = Proc.new do |x|
  x + x
end

double_then_square = compose(double_it, square_it)
square_the_double = compose(square_it, double_it)

puts double_then_square.call(5)
puts square_the_double.call(5)
puts ''

class Array
  def each_even(&was_a_block_now_a_proc)
    is_even = true
    self.each do |object|
      if is_even
        was_a_block_now_a_proc.call object
      end

      is_even = !is_even
    end
  end
end


['apple', 'bad apple', 'cherry', 'durian'].each_even { |fruit| puts 'Yum! I just love ' + fruit + ' pies, don\'t you?' }


[1, 2, 3, 4, 5].each_even { |odd_ball| puts odd_ball.to_s + ' is NOT an even number!' }

def profile(description_of_block, &block)
  start_time = Time.now

  block.call

  duration = Time.now - start_time

  puts description_of_block + ': ' + duration.to_s + ' seconds'
end

profile '25000 doublings'  do
  number = 1

  25000.times { number += number }

  puts number.to_s.length.to_s + ' digits'
end

profile 'count to a million' do
  number = 0

  1000000.times { number += 1 }
end











