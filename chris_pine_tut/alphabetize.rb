# Let's write a program which asks us to type in as many words as we want (one word per line, continuing until we just press Enter on an empty line), and which then repeats the words back to us in alphabetical order. OK?

# initalize array
words_array = []
adding = true

# add words to array
while adding == true
  next_word = gets.chomp
  if next_word != '' # how to use nil?
    words_array.push next_word
  else
    adding = false
  end
end

# sort array
alpha_words = words_array.sort

# print new array
puts alpha_words
