# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself, with: ].

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode

# Initial Solution
=begin
def create_word(board, *coords)
	coords.map { |coord| board[coord.first][coord.last]}.join("")
end

=end
  

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE
#puts create_word(boggle_board, [2,1], [1,1], [1,2], [0,3])  #=> returns "code"  
#puts create_word(boggle_board, [0,1], [0,2], [1,2])  #=> creates what california slang word? RAD

# Reflection 

# I'm not sure what I was supposed to do.  Get an object and an array of arrays that maps out the characters needed to spell a word.  return that word.


#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  


$boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]

# Pseudocode
#Accept a row number and respond with all values in that row

# Initial Solution
=begin
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
=end
# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE
#puts "Row with passed array : #{get_row_v1(boggle_board, 1)}" #=>  ["i", "o", "d", "t"]
#puts "Row with global variable : #{get_row_v2(0)}" #=>  ["b", "r", "a", "e"]

# Reflection 
# http://stackoverflow.com/questions/9389432/ruby-can-not-access-variable-outside-the-method


#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode

# Initial Solution


# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE


# Reflection 