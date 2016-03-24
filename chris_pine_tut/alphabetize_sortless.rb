# Let's write a program which asks us to type in as many words as we want (one word per line, continuing until we just press Enter on an empty line), and which then repeats the words back to us in alphabetical order. OK?

# initialize
words_array = []
adding = true
index1 = 0
index2 = 1

# add words to array
while adding == true
  next_word = gets.chomp
  if next_word != '' # how to use nil?
    words_array.push next_word
  else
    adding = false
  end
end

# initialize sort
alpha_words = words_array
index1 = alpha_words.length - 1

# sort array - trying to do this with a cold is very very challenging
# can i do this using each?
while index1 >= 0
  index2 = alpha_words.length - 1

  while index2 >= 0
      if alpha_words[index2].downcase < alpha_words[index1].downcase
        holder = alpha_words[index2]
        alpha_words[index2] = alpha_words[index1]
        alpha_words[index1] = holder
      end

    index2 = index2 - 1
  end

  index1 = index1 - 1
end

# print new array
puts alpha_words












