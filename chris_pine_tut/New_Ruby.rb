# ruby is a uses classes - obj/oriented lang
# very modular - make each obj a module

# Classes are generally capitalized
# underscores, no spaces
# every space tells Ruby that it is a separate command
# tab size matters - std 2 spaces - workplace conventions
# end will end methods and the program
# have to stack ends properly - nested ends
# ruby reads from bottom up for garbage collection

# commands are in libraries
# debugging is important
# understanding architecture is important
# - the structure of module connections

# ruby grammar is like english grammar
  # go & do
# ruby picky about whitespace

# other ruby rules: via sandi metz - premier ruby expert
  # can rewrite ALL methods and rules
  # even private methods
  # ruby rules are guidelines
  # - no more than 180 lines of code in any one file
  # - EVERYTHING is an object - including object class
  # - EVERYTHING is overwritable
  # - there are "protected classes, BUT none are fully protected" - different syntax to overwrite them
  # - class CLASS is not protected at all - CLASS = overwrites it

# ruby has 5 printing commands
  # print writes what comes after as an exact string to screen
  # puts runs the command and writes the result to screen

# lowercase suggests it is a method defined somewhere else
# all brackets are equal to ruby
  # tradition dictates bracket use - nesting
  # square brackets used for hashes
    # hashes are a collected set of data points, separated by commas
  # quotation marks turn things into strings

# most common way to deal with data in ruby is to put them in hashes
# hashes are a type of array

# integer and float extremely important
  # ruby rounds down when computing integers

# time zones are hard - each class has a specific way of handling time class issues all the time
# each non-leap year has 52 weeks +1 day. why your bday moves forward 1 day each non-leap year
# class conflicts are when two classes are contradictory

# variables & assignment
  # variables must start with a lowercase letter
  # assignment is putting something into a variable
  # variables point to a value, the string or number assigned
  # once assigned variables do not change for life of program unless you explicitly tell them to change
  # if .to_i or .to_f are given values they don't understand, then the default value they pick is 0 or 0.0 accordingly

  # puts means "put string" - it converts the value computed into a string before writing it to the screen
  # puts does the same thing puts '' does - prints a blank line
  # gets means "get string" - it retrieves strings
  # gets waits for the user to type and hit enter, then retrieves that string
  # chomp takes off any Enters[carriage returns] at the end of strings

# many kinds of objects, many methods. understanding the side effects of interactions between objects and methods can be exploited

# methods
  # methods are things that do something
  # objects are the nouns, methods are the verbs
  # are variables pronouns?
  # we call methods on objects
  # '.' before the method name allows us to connect it directly to the object
  # so a_number + another_number is the same as a_number.+ another_number
  # self is the special variable that points to the object you are in - this is an implicit object - is this called the current object?
  # self.put does not work in Ruby 2.0.0

  # string methods
    # methods that work on string objects - duh
    # reverse - reverses the order of the characters in the string but does not mutate(?) the original string
    # can "stack" some methods one after another
    # can "add" strings and run methods on the "total"
    # length - gives the length of the string
    # upcase - makes all characters uppercase
    # downcase - makes all characters lowercase
    # swapcase - switches the case of all the characters in the string
    # capitalize - makes all the characters lowercase except the first character which it makes uppercase
    # center - centers the string on the page, must give it a linewidth parameter so it knows how to center
    # ljust - left justifies text on a line - needs a linewidth parameter
    # rjuar - right justifies text on a line - needs a linewidth parameter
    # the linewidth parameter does not have to be a variable and can be any variable name
    # none of these methods mutate the original string

  # number methods
    # methods that work on numbers
    # +, -, *, /, **, %
    # ** is exponentiation
      # - eg, 5 squared is written as 5**2
      # - eg, square root of 5 is written as 5**0.5
    # % is modulus - gives remainder after division by a number
    # modulus does not work with floating point integers
    # abs - takes the absolute value of a number
    # rand - random number generator
      # rand gives a random float between 0.0 and 1.0 inclusive
      # give rand and some_integer and it will give you an integer from 0 and some_integer - 1
      # rand(1) always gives back 0
      # rand(101) gives a number from 0 to 100
    # srand - sets the seed to return the same randomly generated numbers from earlier in the program
      # we give srand a seed - a number code - once you seed srand, each time you use the number after it will give you the same random numbers - EVEN IF YOU RERUN THE PROGRAM!!!!!! - EVEN AFTER I TURN OFF TERMINAL AND THEN RERUN THE PROGRAM!!!!!!! - WHAT IS GOING ON!!!!!!
    # Math object
      # format is either (Math::PI) or Math.sqrt(something)
      # returns floats that are really close to right
      # working with integers best overall cuz floats are not truly accurate

# Flow Control
  # Comparison methods
    # returns a binary answer - either true or false
    # >, <, <=, >= - self-explanatory
    # != which asks "are these different"
    # == which asks "are these the same"
    # = is not ==, = is for variable assignment, not comparison
    # comparing numbers is straight forward
    # we can also compare strings - ruby uses "lexicographic ordering"
      # so in alphabetic order, so a < z, etc.
      # but upcase b4 downcase, so Z < a, etc.
      # remember to convert before comparison
    # when true or false is returned it is NOT a string, it is an object

  # Branching methods
    # these are conditional statements - if/else/end statements
    # use comparison methods with branching methods to produces choices with separate actions
    # tactic - right if/else/end each time you want a branching block so you can make sure they are nested correctly
    # tactic - fill in the actions you want to happen as comment lines if they will take a while to code - this pseudo code will be helpful to keep track of what you are trying to accomplish and where it is/will be accomplished
    # the above tactics will create a program with unfinished functionality, but the program will run so you can test as you go

  # Looping methods
    # while/end loops repeat actions until a condition is met
    # use so you DRY - don't repeat yourself

  # logical operators
    # or, and & not - boolean algebra
    # allow you to combine conditionals
    # or is not exclusive-or like in english, it means either or both of the options, not one or the other

# Arrays & Iterators
  # Arrays are lists - each slot acts as a variable in the sense we can see what object each slot points to and we can reassign the slots to other objects as we see fit
  # arrays can contain objects - numbers, strings, variables and other arrays
  # arrays count from 0, the zeroth member of the array
  # nil is a special object that means "not any other object"

  # each - another array method - allows us to do something to each object the array points to
  # each allows iteration over an array without using numbers
  # methods that "act like" loops are called iterators
  # while, end, do, if, else and similar words are not methods

  # times - an integer method - does the stuff number/variable times
    # number/variable.times do
    #   **stuff to be done**
    # end

  # many array methods
    # length, reverse, +, * work like the string methods, but work on the elements/slots of the array
    # some are specific to arrays - last & join, some mutate the array - push & pop
    # join - works much like .to_s - <array>.join(<character>)
      # it joins together elements of an array with the passed characters between each element
      # it will unpack arrays inside of arrays appropriately
    # puts [] does nothing - unlike puts or puts '' which print a blank line
    # push adds an object to end of array - mutates the array
    # pop removes object at end of array and returns it - mutates the array
    # last returns the object at the end of the array - does not mutate it

    # sort gives a sorted version of the array

# creating methods
  # use def/end to define the method
    # e.g., def sayBoo
    #         puts "Booooooooo...."
    #       end
  # typing the method name - in this case sayBoo - calls the method
  # method names, like variable names start with a downcase letter
  # to pass parameters to methods - add parameter name after method name - then call method with parameter after the method call
    # e.g., def sayBoo numOfBoos
    #       sayBoo 5
  # if a method defined with parameters it must have parameters when called

  # local variables
    # variables that are inside a method
    # cannot be accessed outside method - undefined local variable error
    # keeps those variables from affecting variables outside the method
    # basically we are pointing the method[local] variable to the outside object[parameter] we have passed in [either as variable that points to that object or the object itself], the variables stay separate, and, as always, we can only change their assignment inside of their scope.

  # return values
    # methods often return something when called
    # arithmetic methods return numbers, string methods return strings
    # puts outputs to screen, it always returns nil
    # every method has to return something, even if it is just nil
    # the value returned from a method is simply the last line of the method
    # putting return in a method allows for early return for a method
    # tells the method exactly what to return and ends the method's action

  # elsif (like else in javascript) - allows for multiple conditionals

  # recursion - calling a method inside of itself

# Classes
  # kinds of objects are called Classes
  # string class, integer class, etc.
  # Classes are always capitalized: Array, Float, String, etc.

  # create a new object of a specific class using the 'new' keyword
    # e.g. a = Array.new - creates an empty array assigned to a - seldom done
    # numbers are special exceptions - can't create an integer with Integer.new

  # Time class
    # Time objects represent moments in time
    # can add or subract numbers to add or subtract time to the Time object
      # 1 = 1 sec
    # can create a specific time by using mktime takes
      # takes parameters (year, month, day, hour, minute, second)
      # the day range goes to 31 for each month
        # it will reinterpret the day and month accordingly - e.g. 2/30 = 3/2 for non-leap years 3/1 for leap years
      # cannot pass lots of seconds into mktime and spit out a formatted time
    # can use comparison methods and subraction - earlier is less

  # Hash class
    # a lot like arrays - slots point to various objects
      # BUT not in a row - sort of jumbled together
      # & ANY object can refer to a slot
    # great for things that don't fit into an ordered list
      # simply a way to store a set of key:value pairs?
      # how are hashes similar to JSON notation?
    # aHash = {} - will create a new, empty hash
    # can use any object as key for a hash, usually strings, but arrays too
    # REMEMBER the slots in hashes are not in a particular order and will not always come out the same way you put them in

  # Extending Classes
    # can add to methods to a class of objects - extending the Class
    # can redefine built-in methods as well - DONT DO THIS!!!
    # can use self inside new method to refer to object using the method
      # class BuiltInClass
      #   def to_newMethod
      #     <stuff to do>
      #   end
      # end

  # Creating Classes
    # basically we are going to make types of objects and manipulate them
      # class NewClass
      #   def to_newMethod
      #     <stuff to do>
      #   end
      # end
    # remember any variables inside the method are local to the method

  # Instance Variables
    # an instance of a class is an object of that class
    # again, when we create an object we are creating an instance of that object's class
    # THUS, instance variables are an object's variables
    # they last as long as the object lasts
    # syntax is to put @ at the front of the variable name
      # how to know which type of variable to use?
    # to set up an new object right as creation use the initialize method in the class you are extending or creating
      # the initialize method is always called when an object that contains it is created

  # more class method creation
    # private - means that methods defined here are internal to object
    #         - they can't be used outside of the object
    # ending method names with a ? let's us know they return true or false

# exit quits a program
# inspect acts similar to to_s, except it tries to show you the ruby code that built the object passed to it

# Blocks and Procs
  # block of code is the lines of code that are functionality
  # iterators use this format
  # proc is a block of code between - do and end - wrapped in an object and stored as a variable or passed to method
    # it is a method not bound to an object because it is an object
    # can use it like any other object, not method bound to object
  # why to use? because methods are limited:
    # can pass procs into methods, but not methods into methods
    # methods can return procs, but can not return methods
    # gives us control over when of method execution
    # gives us control over how many times generic/passed methods are called
  # can have methods which return procs, not often done
    # allows for lazy evaluation, infinite data structures and currying
  # can define and pass block straight into method if we plan on not using after we pass it into the method
    # do this by putting the block after the method
    # when defining method put proc name at end of method parameter list
    # and precede proc name with an ampersand '&' to make sure that method will grab block
    # this works similarly to each and times


# when designing a program make a flowchart of program flow before inputs and outputs
# pronouns
  # transfer pronoun in books from he/she to they
  # how do i architect this?
  # add each use case to check to the workflow

# ruby-lang.org - website for Ruby programming language - the dictionary
# batsov github: the style guide
# learn to program ruby & eloquent ruby - text book
# ruby quiz & ruby koans - assignments
# "tutoring" now at ford food and drink - on powell - wed 6ish - 8p

# for next wednesday
  # finish procs & blocs chpt L2PrgRub
  # start looking at the methods in the base [built-in] classes - ruby-lang.org
  # they are built in the way i want to build my methods
  # CG will email me links for next steps
    # rspec - test framework for Ruby
      # has prewritten curriculum
    # etc.
















CLASS New_Ruby
  New_Ruby = newruby.do |

    Zeo_Whatever restart.go | puts(anothervariable[hashes,red,blue,purple,green{2.4}])

    end

  end




















