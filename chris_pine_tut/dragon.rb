class Dragon
  def initialize name
    @name = name
    @asleep = false
    @stuff_in_belly     = 10 #full belly
    @stuff_in_intestine = 0 # doesn't have to excrete

    puts @name + ' is born.'
  end

  def feed
    puts 'You feed ' + @name + '.'
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts 'You walk ' + @name + '.'
    @stuff_in_intestine = 0
    passage_of_time
  end

  def put_to_bed
    puts 'You put ' + @name + ' to bed.'
    @asleep = true
    3.times do
      if @asleep
        passage_of_time
      end
      if @asleep
        puts @name + ' snores, filling the room with smoke.'
      end
    end
    if @asleep == false
      puts @name + ' wakes up slowly.'
    end
  end

  def toss
    puts 'You toss ' + @name + ' up into the air.'
    puts @name + ' giggles, which singes your eyebrows.'
    passage_of_time
  end

  def rock
    puts 'You rock ' + @name + ' gently.'
    @asleep = true
    puts @name + ' briefly dozes off...'
    passage_of_time
    if @asleep
      @asleep = false
      puts '...but wakes when you stop.'
    end
  end

  private
  # private means that the methods defined here are methods internal
  # to the object. can feed dragon, but can't ask if they are hungry.

  def hungry?
    @stuff_in_belly <= 2
  end

  def poopy?
    @stuff_in_intestine >= 8
  end

  def passage_of_time
    if @stuff_in_belly > 0
      # food moves from belly to intestine
      @stuff_in_belly     = @stuff_in_belly - 1
      @stuff_in_intestine = @stuff_in_intestine + 1
    else
      if @asleep
        @asleep = false
        puts @name + ' wakes suddenly!'
      end
      puts @name + ' is starving! In desperation ' + @name + ' ate YOU!'
      exit # This quits the program
    end

    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts 'Whoops! ' + @name + ' had an accident....'
    end

    if hungry?
      if @asleep
        @asleep = false
        puts @name + ' wakes up suddenly!'
      end
      puts @name + '\'s stomach grumbles...'
    end

    if poopy?
      if @asleep
        @asleep = false
        puts @name + ' wakes up suddenly!'
      end
      puts @name + ' does the potty dance...'
    end
  end
end

command = ''

puts 'Thanks for purchasing a new pet dragon.'
puts 'Once you give your dragon a name it will hatch'
puts 'and be ready to accept these simple commands:'
puts 'feed, toss, rock, walk, tuck.'
puts 'At any time type exit to stop playing.'

puts 'What would you like to name your dragon?'
dragon_name = gets.chomp.capitalize
pet = Dragon.new dragon_name

puts dragon_name + ' awaits your command.'
while command != 'exit'
  command = gets.chomp.downcase
  if command == 'feed'
    pet.feed
  elsif command == 'toss'
    pet.toss
  elsif command == 'tuck'
    pet.put_to_bed
  elsif command == 'rock'
    pet.rock
  elsif command == 'walk'
    pet.walk
  elsif command == 'exit'
    puts 'Bored already? See you next time!'
    exit
  else
    puts 'Please enter a valid command!'
    puts 'Annoying your dragon can be dangerous!'
  end
end


















