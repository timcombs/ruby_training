# write a method
  # takes a block
  # calls block once per hour - Time.now.hour - returns 0 - 23
  # if you pass in 'do puts "BONNGGGGG!" end' - { puts 'BONNGGGG!!' } - it will chime like a grandfather clock

def hourly_chime(&block)
  @current_time = Time.now.hour
  if @current_time > 12
    @period = 'pm'
    @current_time = @current_time - 12
  elsif @current_time == 0
    @current_time = 12
    @period = 'am'
  else
    @period = 'am'
  end

  @current_time.times { block.call }
end

hourly_chime { puts 'BONNGGGG!!' }
hourly_chime { puts @current_time.to_s + @period }
hourly_chime { puts @current_time/4.to_i }
