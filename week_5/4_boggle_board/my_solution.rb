# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself, with: ].

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]

$boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]
# Part 1: Access multiple elements of a nested array

# Pseudocode

# Initial Solution

def create_word(board, *coords)
	coords.map { |coord| board[coord.first][coord.last]}.join("")
end
  

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE
puts create_word(boggle_board, [2,1], [1,1], [1,2], [0,3])  #=> returns "code"  
puts create_word(boggle_board, [0,1], [0,2], [1,2])  #=> creates what california slang word? RAD

# Reflection 

# I'm not sure what I was supposed to do.  Get an object and an array of arrays that maps out the characters needed to spell a word.  return that word.


#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode
#Accept a row number and respond with all values in that row

# Initial Solution

def get_row_v1(board, row)
    # your code here
    #board[row] # just what is requested
    board[row].join("") # as a word
end

def get_row_v2(row)
    # your code here
    $boggle_board[row] # just what is requested
    #boggle_board[row].each.join("") # as a word
end

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE
=begin
$boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]
=end
puts "Row with passed array : #{get_row_v1(boggle_board, 1)}" #=>  ["i", "o", "d", "t"]
puts "Row with global variable : #{get_row_v2(0)}" #=>  ["b", "r", "a", "e"]

# Reflection 
# I think this exercise was written wrong, or I couldn't find a better answer. The array is defined as a local variable therefore the method can't see it.  My 2 solutions are either convert boggle_board to a global variable, or pass boggle_board as an additional argument to the method.  

#Or am I missing something?
# http://stackoverflow.com/questions/9389432/ruby-can-not-access-variable-outside-the-method


#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode
#Accept a column number as an argument
#Go through each sub array / row and grab the value at the position defined by the passed column number
#return the result

# Initial Solution
=begin
def get_col(col)
	arr = []
    $boggle_board.each do |x| 
    	arr << x[col]
    end
    return arr
end
=end
# Refactored Solution

def get_col(col)
	arr = []
    $boggle_board.each { |x| arr << x[col] }
    return arr
end

# DRIVER TESTS GO BELOW THIS LINE


puts "get_col: #{get_col(1) }" #=>  ["r", "o", "c", "a"]

puts boggle_board[0][1] == "r"   # returns boggle_board[row_number][column_number]
puts boggle_board[2][1] == "c" #=> should be true
puts boggle_board[3][3] == "e" #=> should be true
puts boggle_board[2][3] == "x" #=> should be false

# Reflection 

# I feel like there should be some way to create a sub-array from an array and return it on one line.  Just haven't found it yet.
# I hope I was right to create a global array
# http://stackoverflow.com/questions/10991971/is-it-possible-to-have-a-one-line-each-block-in-ruby