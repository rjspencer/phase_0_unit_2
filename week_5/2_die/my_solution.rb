# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].

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
  	unless labels.length != 0  # .size is another option
		  raise ArgumentError.new("Passed array must not be empty")
    end
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


#nothing to do



# 1. DRIVER TESTS GO BELOW THIS LINE


=begin
die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
puts die.sides # still returns the number of sides, in this case 6
puts die.roll # returns one of ['A', 'B', 'C', 'D', 'E', 'F'], randomly


boggle = Die.new(('A'..'Z').to_a)
puts boggle.sides
10.times do 
	puts boggle.roll
end
=end


# 5. Reflection 

# Dear stackoverflow.com, thanks for the .size  