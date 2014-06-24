# U2.W6: Create a BoggleBoard Class


# I worked on this challenge [by myself, with: ].


# 2. Pseudocode

BoggleBoard
accepts array of letters
creates words from coordinates
returns letters 
	by position
	by row
	by column

# 3. Initial Solution
class BoggleBoard
	attr_reader :dice_grid

	def initialize(dice_grid)
		@dice_grid = dice_grid
	end

	def create_word(*coords)
		coords.map { |coord| @dice_grid[coord.first][coord.last]}.join("") 
	end

	def get_row(row)
	    @dice_grid[row] 
	end

	def get_col(col)
		arr = []
	    @dice_grid.each { |x| arr << x[col] }
	    return arr
	end
 
end
 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:
# implement tests for each of the methods here:

puts "Test 1 : #{boggle_board.create_word([2,1], [1,1], [1,2], [0,3])  === "code"  }"
puts "Test 2 : #{boggle_board.create_word([0,1], [0,2], [1,2])  === "rad"}"
puts "Test 3 : #{boggle_board.get_row(1) === ['i', 'o', 'd', 't']}"
puts "Test 4 : #{boggle_board.get_row(0) === ['b', 'r', 'a', 'e']}"
puts "Test 5 : #{boggle_board.get_col(1) ===  ["r", "o", "c", "a"]}"
puts "Test 6 : #{boggle_board.dice_grid[3][2] == "k" }"  
puts "Test 7 : #{boggle_board.dice_grid[2][1] == "c" }"
puts "Test 8 : #{boggle_board.dice_grid[3][3] == "e" }"
puts "Test 9 : #{boggle_board.dice_grid[2][3] != "x" }"	#=> should be false


# 5. Reflection 

=begin
Classes seem really easy to use in Ruby.  I haven't worked much with them, that probably makes me appreciate them more.  I can see how this makes code shorter and easier to break into sections.  I don't need to know how the other person makes an object do what it does, I just need a list of functions I can call.

=end