# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: Integer - number of sides
# Output: .sides & .roll returns integer
# Steps:
=begin
if given sides are not positive give error
Save given sides to variable
if sides requested, return the initialized sides count
when roll requested, return a random value from 1 to the total number of sides
=end



# 3. Initial Solution

class Die
  def initialize(sides)
  	unless sides > 0 
		raise ArgumentError.new("Only positive numbers are allowed")
	end
	@sides = sides
  end
  
  def sides
    @sides
  end
  
  def roll
	rand(@sides) + 1 #
  end
end


# 4. Refactored Solution

#Can't get shorter than 1 line




# 1. DRIVER TESTS GO BELOW THIS LINE
=begin
nine = Die.new(9)
puts "Sides test: #{nine.sides == 9}"
puts "Roll test: #{nine.roll >= 1 && nine.roll <= 9}"
negative = Die.new(-1) # Returns error

=end
# 5. Reflection 

#This one was pretty easy.