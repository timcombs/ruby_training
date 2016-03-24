class Document
  attr_accessor :writable
  attr_reader :title, :author, :content

  def initialize(title, author, content)
    @title = title
    @author = author
    @content = content
  end

  def words
    @content.split
  end

  def word_count
    words.size
  end

  def title=(new_title)
    if @writable
      @title = new_title
    end
  end

  def author=(new_author)
    if @writable
      @title = new_author
    end
  end

  def content=(new_content)
    if @writable
      @title = new_content
    end
  end
end

doc = Document.new('Hamlet', 'Shakespeare', 'To be or not to be, that is the question.')
puts doc.title
puts doc.author
puts doc.content
puts ''
puts doc.words
puts doc.word_count
puts ''

movie = { title: '2001', genre: 'sci fi', rating: 10 }

movie.each { |entry| p entry }
movie.each { |name, value| p(name, value) }
puts ''

some_words = doc.words
puts some_words.find_index('that')
puts doc.words.find_index('that')

def index_for(word, words)
  words.find_index { |this_word| word == this_word }
end

puts index_for('that', some_words)

p doc.words.map { |word| word.size }
p doc.words.map { |word| word.upcase }

def avg_word_length(an_array)
  total = an_array.inject(0.0) { |result, word| word.size + result }
  total / an_array.size
end

puts avg_word_length(some_words)
puts ''

array2 = [0, -10, -9, 5, 9]
array3 = array2
# CAREFUL!!! when changing array2 this also mutates array3
# so how to do this?!!?
p array2
array2.each_index { |i| array2.delete_at(i) if array2[i] < 0 }
p array2
p array3
array3.delete_if { |x| x < 0 }
p array3
puts ''

p doc.content.split

check_string1 = 'a bunch of dudes i don\'t know'
check_string2 = "a bunch of dudes i don't know"
check_string3 = %q(a bunch of "dudes" i don't know)
time = "8 o'clock"
time = '8 o\'clock'

p check_string1
p check_string2
p check_string3
p time
puts check_string1
puts check_string1
puts check_string3
puts time
puts ''

string_with_quote = %q(<p class='quote'>"What did you say?"</p>)
puts string_with_quote
p string_with_quote
puts ''

friend = 'Bob'
friend_house = '146 Treelined Lane'
puts "My friend is #{friend} and #{friend} lives at #{friend_house}."
puts ''

name = "weirdo"
puts %(<tr><td class="name">#{name}</td>)
p %(<tr><td class="name">#{name}</td>)
puts ''

first_result = <<EXPECTED
  This is specially formattted text

you know

  you know



you know
EXPECTED

second_result = <<-INDENT_EXPECT
  This is specially formattted text

you know

  you know



you know
  INDENT_EXPECT

third_result = <<~TILDA_EXPECT
  This is specially formattted text

you know

  you know



you know
  TILDA_EXPECT

puts first_result
p first_result
puts ''
puts second_result
p second_result
puts ''
puts third_result
p third_result
puts ''

sample = 'is a sample string'
new_string = sample.sub('is', 'was')
puts new_string
puts sample
puts ''

funny_string = 'that game is some game-changing game game.'
punny_string = funny_string.gsub('game', 'fame')
puts funny_string
puts punny_string
puts ''

tldr_string = 'yesterday, all my troubles seemed     so     far     away'
just_write = tldr_string.split
p just_write
test_write = tldr_string.split(' ')
p test_write
r_write = tldr_string.split('r')
p r_write
puts ''

puts "index for all is #{tldr_string.index('all')}"
puts "index for troubles is #{tldr_string.index('troubles')}"
puts ''

a_name = 'Karen'
the_name = a_name
puts a_name
puts the_name
puts ''
a_name[0] = 'D'
puts a_name
puts the_name
puts ''

puts a_name
puts a_name.size
puts a_name[a_name.size - 1]
puts a_name[-1]
puts a_name[-2]
puts a_name[2..4]
puts a_name
puts ''

puts 'algorithm'[3]
puts 'algorithm'[-6]
puts ''

the_time = '10:24 AM'
puts 'It\'s morning!' if /AM/ =~ the_time
puts ''

puts /dark side/ !~ 'Use the Force'
puts /Force/ !~ 'Use the Force'
puts ''

sw_string = 'May the Force be with you always'
my_match = /Force/.match(sw_string)
puts my_match
p my_match

puts my_match.to_s
puts my_match.pre_match
puts my_match.post_match

retain_my_match = /(.*)Force(.*)/.match(sw_string)

# accessing the capture groups
puts retain_my_match[0]
puts retain_my_match[1]
puts retain_my_match[2]
puts ''

# converting to array to use array methods
puts retain_my_match.to_a
p retain_my_match.to_a
puts ''
retain_my_match.to_a.each do |m|
  puts m.upcase
end
puts ''
retain_my_match_array = retain_my_match.to_a
retain_my_match_array.each do |m|
  puts m.upcase
end
puts ''

obi_string = 'Who\'s the more foolish, the fool or the fool who follows him?'
p obi_string.scan(/fool/)
obi_string.scan(/fool/).each do |m|
  p m.capitalize
end
puts ''

p obi_string.scan(/fool(?=ish)/)
p obi_string.scan(/fool(?!ish)/)
p obi_string.gsub(/fool(?!ish)/, 'self')
puts ''
yoda_string = 'For my ally is the Force, and a powerful ally it is.'
p yoda_string
p yoda_string.gsub(/(?<=powerful )ally/, 'friend')






