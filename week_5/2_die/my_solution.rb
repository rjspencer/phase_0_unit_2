# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: Array of Strings
# Output: String
# Steps: 
=begin
Store passed string values
sides() - Number of strings
roll() - Pick a random string
=end


# 3. Initial Solution

class Die
  def initialize(labels)
  	@sides = labels
  end

  def sides
  	@sides.length
  end

  def roll
  	@sides.sample
  end
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE



die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
die.sides # still returns the number of sides, in this case 6
die.roll # returns one of ['A', 'B', 'C', 'D', 'E', 'F'], randomly






# 5. Reflection 
