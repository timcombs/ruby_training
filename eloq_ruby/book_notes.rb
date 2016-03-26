# GENERAL NOTES:
  # REMEMBER: nearly everything in Ruby returns a value

  # **Need more explanation about regular expressions!!**

  # REMEMBER: an empty string is not nil

  # => is the hash rocket that associates values to keys

  # avoid hashes as optional parameters - except as object initializers

  # as of Ruby 1.9 hashes are ordered

  # * is called splat, and often acts like a wildcard assigner

  # p writes obj.inspect followed by newline

  # pp is pretty print, a beefed up version of p - need to require in

# choosing the right control structure
  # if works as if in most programming languages
    # if conditions are met then do some stuff and end
  # unless is an if in reverse logic
    # unless conditions are met then do some stuff and end

  # e.g.  def title=(new_title)
  #         !not @read_only
  #           @title = new_title
  #         end
  #       end
  #
  #         VS - logic produces the same results
  #
  #       def title=(new_title)
  #         unless @read_only
  #           @title = new_title
  #         end
  #       end

  # in the above case the 2nd is preferred as the logic is clearer

  # similarly when using loops - while vs until
  # they are the reverse logic of one another
  # clear code is the goal - eliminate each extraneous character, each bit of reversed logic!

  # use modifier forms if possible - the rough logic is: DO THIS IF THAT
    # @title = new_title unless @read_only OR
    # @title = new_title if @writable
    #
    # in case of while and until using documenting printing
    #   document.print_next_page while document.pages_available? OR
    #   document.print_next_page until document.printed?

  # there is a for - in loop, but DON'T USE IT!
  # for loop in ruby is defined in terms of each
  # using for then adds an unneeded level of indirection
    # but each introduces a new scope and for does not
    # variables in for can be seen outside the loop, not so for each
    # use the iterator each instead
      # fonts = ['courier', 'times roman', 'helvetica']
      #
      # for font in fonts
      #   puts font
      # end
      #
      # same as:
      # fonts.each do |font|
      #   puts font
      # end

  # case if the multiconditional statement
  # returns a value unless no else and then may return nil
  # case statements are giant value-returning expressions
    # example:
      # case title
      # when 'War and Peace'
      #   'Tolstoy'
      # when 'Romeo and Juliet'
      #   'Shakespeare'
      # else
      #   'Don\'t know'
    # can assign to variable and can use a modifier form
    # example:
    # author =  case title
    #           when 'War and Peace' then 'Tolstoy'
    #           when 'Romeo and Juliet' then 'Shakespeare'
    #           else 'Don\'t know'
    #           end
    #
    # case evaluates its statements using the === operator
    # since classes use === to identify instances of themselves
    # we can use case to switch on the class of an object
    # example:
    # case doc
    # when Document
    #   puts 'It\'s a document!'
    # when String
    #   puts 'It\'s a string!'
    # else
    #   puts 'Don\'t know what it is!'

  # Staying out of trouble - boolean logic
    # only false and nil are treated as false - 0 is true
    # 'false' is true cuz it is a string

    # avoid testing for truth by testing for specific values instead
    # example:
    # if flag == true     # flag can get reassigned easily
    #   <do some stuff>
    # end
    #
    # doc = Document.new('A Question', 'Shakespeare', 'To be or not...')
    # flag = defined?(doc)
      # defined? in this case returns a boolean, but not true or false
      # it returns the string passed to it if true, the local-variable
      # it returns nil if false

    # if looking for nil and possibility false may pop up then look for nil explicitly
    # example:
    # # loop terminates early if the next_object == false
    # while next_object = get_next_object   # if this is not nil
    #   <do some stuff with the object>
    # end
    #
    # better:
    # until(next_object = get_next_object) == nil
    #   <do some stuff with the object>
    # end
    #               OR
    # until(next_object = get_next_object).nil?
    #   <do some stuff with the object>
    # end

  # In the Wild - using ruby's expression-based ways
    # can capture values of while & if statements similar to case
    # rare, but will see this
    # example:
    # ret = if @friends_before && @friends_before > enemies
    #         [false, :connected, 'the best is yet to come']
    #       elsif @friends_after && @friends_after < enemies
    #         [false, :disconnected, 'the best has already come']
    #       elsif friend_cert && !verify(friend_cert.public_key)
    #         [false, :friend, '#{friend_cert.subject} is not friend']
    #       else
    #         [true, :ok, 'Friend is valid']
    #       end

    # the ternary operator - ?:
      # ?: acts as a compact if statement with condition before ?
      # example:
      # # if all == true then file = 'specs' else file = 'latest_specs'
      # file = all ? 'specs' : 'latest_specs'
      #                 SAME AS
      # # don't use this, use the ternary syntax!!!!
      # if all
      #   file = 'specs'
      # else
      #   file = 'latest_specs'
      # end

    # initializing succinctly
      # often you want to make sure a variable is not-nil
      # example:
      # # following code means set new @first_name to old value, unless it
      # # nil, in this case set it to an empty string.
      # @first_name = '' unless @first_name
      #
      # better:
      # @first_name = @first_name || ''
      #
      # best:
      # @first_name ||= ''    # same logic as count += 1
      # DANGER! if @first_name starts out as the boolean false
      # it resets to '' - avoid truth testing for booleans, test for specific values instead, and similarly, do not use ||= to initialize things to booleans

# taking advantage of Ruby's smart collections
  # arrays & hashes

  # literal collections - spelling out a literal can be inelegant
  # collection shortcuts are more elegant
  # %w turns the collection into an array of strings
  # %i turns the collection into an array of symbols
    # for arrays
      # example:
      # poem_words = ['twinkle', 'little', 'star', 'how', 'I', 'wonder']
      # better:
      # poem_words = %w(twinkle little star how I wonder)
    # for hashes
      # example:
      # freq = { "I" => 1, "do" => 1, "like" =>1, "spam" => 963 }
      # better to use symbols instead of strings:
      # freq = { :I => 1, :do => 1, :like =>1, :spam => 963 }
      # preferred to use literal when working with hashes!!!!
      # freq = { I: 1, do: 1, like: 1, spam: 963 }

  # instant arrays & hashes from Method calls
    # methods typically take fixed number of arguments
    # can pass variable number of arguments using splat
    # value of splatted parameter becomes an array of the extra arguments
    # splat will "soak up" the extra arguments, can be anywhere in
      # example:
      # # takes variable arguments and prints them to screen
      # def echo_all(*args)
      #   args.each{|arg| puts arg}
      # end
      #
      # with multiple arguments:
      # def echo_at_least_two(first_arg, *middle_args, last_arg)
      #   puts "The first argument is #{first_arg}"
      #   middle_args.each{ |arg| puts "A middle argument is #{arg}" }
      #   puts "The last argument is #{last_arg}"
      # end
      #
      # another example:
      # # to pass in multiple names to add_authors method
      # # you don't have to pass in an array, it is automatically created
      # def add_authors(*names)
      #   @author += " #{names.join(' ')}"
      # end

    # any method can take a literal hash as an argument
    # leave off braces if hash is at end of argument list - implicit options
      # def load_font(spec_hash)
      #   <loading font according to spec_hash>
      # end
      #
      # load_font(name: 'times roman', size: 12)

  # running through your collection
    # iterating through collections
    # avoid index loops - use each not for
      # example for arrays:
      # words = %w(Mary had a little lamb)
      #
      # words.each { |word| puts word }
      #
      # example for hashes:
      # # block given to each as single argument
      # # calls block as a series of key-value pair arrays
      # movie = { title: '2001', genre: 'sci fi', rating: 10 }
      #
      # movie.each { |entry| p entry}
      #
      # prints out:
      # [title: '2001']
      # [genre: 'sci fi']
      # [rating: 10]
      #
      # # block given to each with multiple arguments
      # # calls block as a series of strings
      # movie.each { |name, value| p(name, value)}
      #
      # prints out:
      # :title
      # "2001"
      # :genre
      # "sci fi"
      # :rating
      # 10

    # hashes & arrays have extensive APIs - lots of methods!!!
      # Array methods call a block on each element of an array

      # find_index - returns the index of a specific element in an array
      # map - returns new array of results - incredibly useful for
      #     - transforming a collection in one fell swoop
      # inject  - passes two arguments into the block
      #         - current element and return value of previous call
      #         - returns final result
      #         - if not given an initial value skips 1st call and
      #         - 1st element is used as initial return value
        # example:
        # # returns average word length of an array
        # def avg_word_length
        #   total = words.inject(0.0) { |result, word| word.size + result }
        #   total / word_count
        # end
      # reverse - reverses the order of the elements in the array
      #         - returns a new array - DOES NOT mutate original array
      # reverse!  - returns original array, but with order reversed
      #
      # the ! is convention at end of dangerous method, but no guarantee
      # pop, push, delete & shift change array, but no ending !

    # Hashes are ordered
      # since 1.9 hashes are ordered
      # adding items to hash go to the end of the line

  # In the Wild - hashes & arrays are the goto
    # use of hashes and arrays to specify all sorts of things
      # call File.readlines('/etc/passwd') returns an array of strings
      # call object.public_methods to get array of method names
      # call my_class.ancestors to get array of super class names
      # XmlSimple gem turns XML into set of nested hashes and array
        # require 'xmlsimple'
        # data = XmlSimple.xml_in('dc.xml')

    # two reasons for this
      # ruby collections powerful enough to avoid custom-tailored collection
      # ruby programmers prefer to work with generic collections
      # OR 1 less class, 1 less thing to go wrong, the cure is simplicity

  # Staying out of trouble
    # be careful to not change collection out from underneath message
      # array = [0, -10, -9, 5, 9]
      # array.each_index { |i| array.delete_at(i) if array[i] < 0 }
      # p array
      # this removes -10 and then -9 gets index 1 after the element in index 1 gets used, so it is missed in the removal block
      # better to say:
      # array.delete_if { |x| x < 0 }
    # in particular if collection is shared by several different threads run risk of modifying collection that another thread is iterating over.
    # similarly adding new elements into indices well past end of array is a danger - can end up with many many nil elements in between
    # be careful not to use hashes or arrays when you can use set
      # point of hash is to map keys to values
      # arrays don't mind duplicates, but need to search whole array if one
      # set is a collection that does not allow duplicates
      # and is a hybrid of array's intuitive inter-operation & hash's speed
      # set needs to required in

# take advantage of Smart Strings
  # style guide is not set on single versus double quotes
  # i have tried to put single quotes unless double quotes is easier or single quotes doesn't work

  # lots of ways to write a string literal
  # they are frequently necessary and sometimes very messy
  # refer to the styleguide for best practices and readability
    # example:
    # string_with_quote1 = 'Say it ain\'t so' # have to escape apostrophe
    # string_with_quote2 = "Say it ain't so"
  # use string interpolation when using variables
    # example:
    # friend = 'Bob'
    # friend_house = '146 Treelined Lane'
    # puts "My friend is #{friend} and #{friend} lives at #{house}."
  # use %q only when mixing single and double quotes
  # %q is the arbitary quote mechanism
  # good for mixing markup without string interpolation
    # example:
    # string_with_quote3 = %q(<p class='quote'>"What did you say?"</p>)
  # use %() - which is equivalent to %Q - for single line strings which require interpolation and embedded double quotes
  # good for mixing markup and string interpolation
    # example:
    # name = "weirdo"
    # %(<tr><td class="name">#{name}</td>)
  # for multiline strings - large blocks of text - use heredocs
  # heredocs preserve leading whitespace
  # use all uppercase characters for the identifier
  # 3 types
    # example:
    # # just a large block of text
    # first_result = <<EXPECTED
    #   This is specially formattted text
    #
    # you know
    #
    #   you know
    #
    #
    #
    # you know
    # EXPECTED
    #
    # example:
    # # indented closing identifier
    # second_result = <<-INDENT_EXPECT
    #   This is specially formattted text
    #
    # you know
    #
    #   you know
    #
    #
    #
    # you know
    #   INDENT_EXPECT
    #
    # example:
    # # indented closing identifier and indented content
    # third_result = <<~TILDA_EXPECT
    #   This is specially formattted text
    #
    # you know
    #
    #   you know
    #
    #
    #
    # you know
    #   TILDA_EXPECT

  # More to Master in the String API

    # lstrip - returns copy of string w/ leading whitespace clipped
    # rstrip - returns copy of string w/ trailing whitespace clipped
    # strip - returns copy of string w/ whitespace clipped from both ends

    # chomp - returns copy of string w/ last newline - \n - removed
      # to remove multiple \n's use chomp multiple times
    # chop - returns copy of string w/ last character removed

    # upcase - returns copy w/ all characters uppercase
    # downcase - returns copy w/ all characters lowercase
    # swapcase - returns copy swapping the case for each character

    # sub - substitutes one substring for another in the string
    #     - will replace FIRST instance of that string
      # example:
      # sample = 'is a sample string'
      # new_string = sample.sub('is', 'was')
      # puts new_string
      # new_string is returned as 'was a sample string'
      #
      # example: be careful!!!
      # sample = 'this is a sample string'
      # new = sample.sub('is', 'was')
      # puts new_string
      # new_string is returned as 'thwas is a sample string'

    # gsub - substitutes one substring for all instances of another substring in the string
      # example:
      # funny_string = 'that game is a game-changing game game.'
      # punny_string = funny_string.gsub('game', 'fame')
      # puts punny_string
      # punny_string returns as 'that fame is a fame-changing fame fame.'

    # split - splits a string into an array using a specific delimiter
      # pass no delimiter argument, split will be whitespace
      # pass a delimiter argument, splits at each instance of delimiter

    # index - looks for a substring inside of a string and returns the index number of the beginning character of the substring

    # just like array methods, string methods often have counterparts that mutate the string, instead of return a copy of the string
    # their names end with '!' - sub and sub!

  # String: Place for Lines, Characters & Bytes
    # strings are collections of strings/substring and characters, but also the bytes behind each character - what are the implications of this?

    # each_char iterates over each character
    # each_byte iterates over each byte
    # each_line iterates over each line
    # NOTE: there is not a generic each method
      # "collection of what?" question canNOT be answered for strings

  # In the Wild
    # most real-world ruby programs are swimming through seas of strings

  # Stay OUT of TROUBLE

    # strings are mutable! Similar to collections!!!
      # if you assign a string to a variable and then assign that variable to another variable a change in the first variable changes the second!!!!!

    # string indexing is flexible, which gives options
      # positive numbers to index from right end of string
      # negative numbers to index from left end of string
      # example:
      # first_name[first_name.size -1]
      #         is equivalent to
      # first_name[-1]
      #       BECAUSE
      # 'algorithm'[3] returns 'o'
      # 'algorithm'[-6] returns 'o'

      # can use a range of indices
      # example:
      # 'abcde'[3..4] returns 'de'

# Find Correct String with Regular Expressions - Regexp
  # can not shy away from them because Ruby manipulates strings so much
  # Regexp is an efficient to do much string manipulation
  # using Regexp allows me to construct a pattern that either will or won't match some string
  # good for email validation
  # the String API and Regexp class are the toolkit for text-processing
  # the process for regexp is Test, Extract, Change
  # different versions of Ruby use slightly different regexp libraries

  # Matching one Character at a Time

    # letter and numbers will match themselves
    # thus:
    # x matches x, aaa matches 3 a's in a row, 123 matches 1st 3 numbers
    # by default case IS important

    # most punctuation have special meanings
    # thus:
    # . matches any one character string including r, % and ~
    # but not newline - \n - characters
    # .. matches any two characters incl 4F, xx and [!

    # use a \ to escape the special meanings of punctuation
    # thus:
    # \. matches the literal .
    # 3\.14 matches string version of PI to two decimal places - 3.14
    # Mr\. Olsen matches Mr. Olsen

    # can combine the simple expressions into more complex patterns
    # thus:
    # A. matches any 2-character string that starts with capital A
    # ...x matches any 4-character string thate ends in x
    # .r\. Smith matches Dr. Smith & Mr. Smith but not Mrs. Smith

    # . extends the range to any

  # Sets Ranges and Alternatives
    # use a set to limit the range of the expression to a specific set

    # use square brackets to define the set
    # this set will then match any single digit of that set
    # thus:
    # [aeiou] matches any single downcase vowel
    # [0123456789] matches any single digit
    # [0123456789abcdef] matches any single downcase hexadecimal digit

    # can build sets into complexity
    # thus:
    # [Tt]im [Cc]ombs will match my name with or without leading capitals
    # [0123456789abcdef][0123456789abcdef] matches any 2-digit hex number
    # [aApP][mM] matches all case versions of am or PM

    # use a range to specify beginning and end of sequence of characters
    # because sets can become long expressions
    # to make a range separate characters in range with a dash
    # thus:
    # [0-9] matches any single digit
    # [0-9a-f] matches any single hex digit
    # [0-9a-zA-z_] matches any single letter, number or the underscore

    # shortcuts for common ranges
      # \d matches any digit so \d\d matches any two digit number
      # \w matches any letter, number or the underscore
      # \s matches any white space character incl space, tab & newline
      # \h matches any hex digit
      # \H matches any non-hex digit

    # alternatives allow to pick either|or using the pipe '|'
      # A|B matches A or B
      # AM|PM matches AM or PM
      # Spiderman|Wolverine matches either of the two heroes

    # can build all of the above into greater complexity
      # A\.M\.|AM|P\.M\.|PM matches either AM or A.M. OR either PM or P.M.

    # use parentheses to separate alternatives from rest of pattern
    # these are called groups or capture groups
    # thus:
    # \d\d:\d\d (AM|PM) matches any string that starts with 2 or more digits followed by a colon followed by two or more digits followed by a space followed by AM or PM - which is a format of clock time

  # Regexp Asterisk
    # the asterisk - * - adds additional complexity

    # it matches ZERO or MORE of the expression that just came before it
    # thus:
    # A* matches zero or more A's
    # AB* matches A and A followed by any number of B's
      # so - A, AB, ABBBBBB, etc.

    # can put the asterisk anywhere in an expression
    # thus:
    # R*uby matches uby, Ruby, RRRRRRRRRuby, etc.
    # Rub*y matches Ruy, Ruby, Rubbbbbbbbby, etc.

    # can put any number of asterisks in an expression
    # thus:
    # R*u*by matches by or uby or Rby or RRRby or uuuuby or RRRuuuuuby etc

    # can use asterisk in combo with sets & ranges, & in alternatives
    # thus:
    # [aeiou]* matches any number of vowels (even zero vowels)?
    # [0-9]* matches any number of digits
    # [0-9a-f]* matches any number of hex digits

    # use .* to match ANYTHING
    # thus:
    # George.* matches all names that begin with George
    # .*George matches all names that end in George
    # .*George.* matches all names that have George in it somewhere]

    # can use ? to match zero or ONE of the things that came before
    # works similarly to *

  # Regexp in Ruby
    # one of the built-in data types
    # Regexp is the name of the Ruby regular expression class
    # has its own special literal syntax

    # make a Ruby regexp by putting the pattern between forward slashes
    # thus:
    # for the clock time expression: /\d\d:\d\d (AM|PM)/
    # to get my name: /[Tt]im [Cc]ombs/

    # to test whether a regexp matches a string use the =~ operator
    # thus:
    # puts /\d\d:\d\d (AM|PM)/ =~ '10:24 PM'
    # returns 0
      # means the regexp matched at index 0
      # means ruby looks for match anywhere in string starting at index 0
    # puts /PM/ =~ '10:24 PM'
    # returns 6
      # means the regexp matched at index 0
    # puts /May/ =~ 'Sometime in June'
    # returns nil
      # means regexp found no match

    # similarly the !~ operator tests whether regexp does not match
    # thus:
    # /dark side/ !~ 'Use the Force'
    # returns true
    # /Force/ !~ 'Use the Force'
    # returns false

    # regexp is truthy-falsey because it returns a number or nil
    # so it can be used as boolean
    # the =~ is "ambidextrous" - string or regexp can come first
    # thus:
    # the_time = '10:24 AM'
    # puts 'It's morning!' if /AM/ =~ the_time
    #         is equivalent to
    # puts 'It's morning!' if the_time =~ /AM/
    # returns 'It's morning' if the time is AM

    # to make the expression non-case sensitive put i at end of regexp
    # thus:
    # puts 'It matches!' if /AM/i =~ 'am'
    # returns 'It matches!'

    # often regexp used in string methods that involve searching
    # thus:
    # def obscure_times!
    #   @content.gsub!(/\d\d:\d\d (AM|PM)/, '**:** **')
    # end
    # could be a method in a class that obscures all the times in a document by mutating those substrings

  # Beginnings and Endings
    # more shortcuts to make matching strings easier

    # to find 'Once upon a time' in a string: /Once upon a time/
    # \A to match at the beginning of a string
    # matches unseen leading edge of string
    # thus:
    # /\AOnce upon a time/ matches at beginning of string

    # \z to match at end of string
    # matches unseen ending edge of string
    # thus:
    # /and they all lived happily ever after\z/ matches at end of string

    # matching in multiline strings
    # ^ to match the beginning of a line
    # thus:
    # puts 'Found it!' if content =~ /^Once upon a time/
    # returns Found it! if the substring is at the beginning of any line

    # $ to match the end of a line
    # thus:
    # puts 'Found it!' if content =~ /happily ever after\.$/
    # returns Found it! if substring is at end of any line

    # . will not match \n character as a default
    # m added to expression turns off default
    # thus:
    # /^Once upon a time.*happily ever after\.$/m matches the text of a "fairy tale" minus the title and "the end"

  # In the Wild
    # look at the time.rb file!
    # uses regexp to parse standard time formats
    # can parse string to Time object instance or Time object to string

    # a quick look at zone_offset method in time.rb
    # parses time zone and section of date-time string
    # can understand UTC and numeric offsets like -7:00
    # uses both string methods, collection methods and regexp
      # def zone_offset(zone, year=self.now.year)
      #   # ...
      #   zone = zone.uppercase           #switches string to upcase
      #   # ...
      #     # next it matches time & date if + or - is at beginning
      #     # & two digits at end with or without a single colon
      #   # if /\A([+-])(\d\d):?(\d\d)\z/ =~ zone
      #     # doesn't match then look for time zone substrings
      #     # in the ZoneOffset collecton
      #   # elsif ZoneOffset.include?(zone)
      #   # ...
      # end

  # Staying out of Trouble
    # remember == is not equivalent to =~
    # is output is 0 that is a match, nil is a non-match
    # regexp is a powerful gift for string processing

  # More Regexp
    # each version of Ruby has a slightly different regexp library
    # Ruby provides a lot of info about matches

    # MatchData
      # make the match a MatchData object to access more info about match

      # thus:
      # my_string = 'The Force will be with you always'
      # my_match = /Force/.match(string)
      # returns #<MatchData "Force">

      # can pass a second argument to start scan at that index
      # thus:
      # my_match = /Force/.match(string, 5) #starts scan at 6th character
      # returns nil

      # can call lots of methods on MatchData object
        # to_s returns text of match
        # pre_match returns text before match
        # post_match returns text after match
        # there are several more methods

      # captures returns something like an array with the captured groups
        # thus:
        # retain_match = /(.*)Force(.*)/.match(string)
        # puts retain_match.captures
        # prints ["The ", " will be with you always"]
          # AHA! this not an array, array methods DO NOT WORK!
        # puts retain_match[0]
        # returns "The Force will be with you always"
        # puts retain_match[1]    #accesses the first capture group
        # returns "The "
        # puts retain_match[2]    # accesses the second capture group
        # returns " will be with you always"
        # ETC.

        # to_a converts MatchData object into an array
        # then you can use the array methods
        # thus:
        # my_match_array = my_match.to_a
        # puts my_match_array
        # returns each element of the new array separated by \n's
        # my_match_array.each do |m|
        #   puts m.upcase
        # end
        # returns original string in upcase

    # Lookarounds
      # let me define a context for a match
      # only returns match when it is surrounded by the specific context

      # breaking it down:
        # ZERO-WIDTH- lookahead pattern does not consume any characters
        #           - it makes a match, but does not return that match
        #           - a boolean, true or false
        # POSITIVE  - expecting a match for the lookahead pattern
        # LOOKAHEAD - something needs 2 be ahead of match for main pattern
        #           - needs to come after the match for the main pattern
        # ASSERTION - lookbehind isn't meant to return a match
        #           - meant to only assert whether match exists or not
        # NEGATIVE  - not expecting a match for lookahead pattern
        # LOOKBEHIND- match a pattern directly preceded by another pattern


        # positive lookahead use ?=
        # negative lookahead use ?!
        # positive lookbehind use ?<=
        # negative lookbehind use ?<!

      # scan returns all matches for the regex
      # thus:
      # fool_string = 'Who\'s the more foolish? The fool or the fool who follows him?'
      # p obi_string.scan(/fool/)
      # returns ["fool", "fool", "fool"]
        # this matches foolish and the two instances of fool
        # this is an array that is returned

      # to return match when it is only a part of, not the whole, word
      # use a zero-width, positive lookaround assertion
      # thus:
      # p obi_string.scan(/fool(?=ish)/)
      # returns ["fool"]

      # to return match when it is whole, not part of, word
      # use a zero-width, negative lookahead assertion
      # thus:
      # p obi_string.scan(/fool(?!ish)/)
      # returns ["fool", "fool"]

      # use gsub to make a substitution pattern
      # uses a zero-width, negative lookahead assertion
      # thus:
      # p obi_string.gsub(/fool(?!ish)/, 'self')
      # returns "Who's the more foolish? The self or the self who follows him?"

      # pattern to substitute match when it is preceded by another pattern
      # uses a zero-width, positive lookbehind assertion
      # thus:
      # yoda_string = 'For my ally is the Force, and a powerful ally it is.'
      # p yoda_string.gsub(/(?<=powerful)ally/, 'friend')
      # returns "For my ally is the Force, and a powerful friend it is."

      # pattern to substitute match when its NOT followed by another pattern
      # uses zero-width, negative lookbehind assertion
      # thus:
      # p yoda_string.gsub(/?<!powerful )ally/, "friend")
      # "For my friend is the force, and a powerful ally it is."

    # RegEx Behaviors
      # 3 distinct controllable behaviors: greedy, lazy, possessive
      # default behavior is greedy

      # Quantifiers
        # tell the regex engines how many times characters should appear in your string
        # determine what behavior regex exhibits

      # Greedy Quantifiers
        # characters need to appear at least one time, can appear many
        # try to match as much of string as possible
        # if that doesn't work it backs up one character and tries again
        # repeats process until there are no more characters to test
        # uses MAXIMUM effort for MAXIMUM return
        # tries as many ways as it can to find a match and returns as many characters that could possibly be part of a match
        # + is a greedy quantifier

      # /.+/ matches any character appearing at least once, guarantees a single character will be there
      # /.+time/ matches any character appearing at least once followed by the word "time"
      # thus:
      # trek_string = 'There\'s no time to talk about time we don't have the time'
      # /.+time/.match(trek_string)
      # matches the entire string cuz it matches the .+ first
      # then tries to find a match for time
      # starts beyond the end of the string
      # then backtracks one character at a time looking for a match
      # finds a match and returns the whole match, in this case the entire string

      # Backtracking
        # greedy quantifiers always backtrack
        # if entire string doesn't match, the regex will try as many ways as possible to find a match
        # has to keep track of the ways it tried to find a match
        # greedy quantifiers eat up system resources eventually
        # Oniguruma Ruby regex engine has some optimizations that make backtracking quicker to use less resources

      # Lazy Quantifiers
        # more contained match, uses way less resources
        # sometimes known as a reluctant quantifier
        # starts at beginning of string tries to match very 1st character
        # if it doesn't find a match the it goes the next character
        # as last resort it will grab whole string and try to find a match
        # uses MINIMUM effort for MINIMUM return
        # once it finds a match it returns what it has
        # put ? after greedy quantifier to make it lazy
        # +? is a lazy quantifier

      # /.+?time/  # is lazy quantifier
      # thus:
      # /.+?time/.match(trek_string)
      # returns "There's no time"
      # started at beginning of string and once it found time it returned that part of the string
      # much less backtracking, way fewer resources

      # Possessive Quantifiers
        # for matching as many characters as possible with few resources
        # uses MINIMUM effort for MAXIMUM return
        # either they match on the first try or they fail
        # all or nothing
        # like greedy, grab the entire string and try to match
        # if no match they DON'T backtrack
        # so they fail fast and use very very few resources
        # best for small regular expressions
        # especially for small subExpressions nested with larger ones
        # USE WITH CAUTION!!
        # put + sign after greedy quantifier to make it possessive
        # ++ is a possessive quantifier

      # /.++time/   # is possessive quantifier
      # thus:
      # /.++time/.match(trek_string)
      # returns nil
      # why? because there is no backtracking
      # it matches the whole string - the .+
      # then it looks for time beyond the string
      # can't find it, can't backtrack so it fails

  # Regex best practices
    # regex get complex quickly
    # they are subprograms in another language you put in Ruby code
    # helps to write in chunks
    # helps to think in terms of TDD - red. green. refactor.

    # e.g. if writing a lookbehind
      # write the main pattern you will be matching
      # check to make sure it works
      # then write the lookbehind
      # check to make sure it works on its own
      # once they both work then combine them
      # check to make sure they work together





















