# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: Positive Integer / Natural number
# Output: Symbol - :high, :low, :correct
# Steps:
=begin
Accept a natural number for the game or generate a random number
Accept a guess
	let player know if guess was to high, low, or correct

=end 

# 3. Initial Solution

class GuessingGame
	def initialize(answer)
		unless answer > 0  
			raise ArgumentError.new("Passed value must be greater than zero")
		end
		@answer = answer
		@solved = false
	end

	def guess(guess)
		#puts "Guess: #{guess} - Answer: #{@answer}"
		if guess === @answer
			@solved = true
			return :correct
		end
		@solved = false
		return :high if guess > @answer
		return :low if guess < @answer
	end

	def solved?
		return @solved
	end
end


# 4. Refactored Solution


#?



# 1. DRIVER TESTS GO BELOW THIS LINE

=begin
test = GuessingGame.new(3)
puts test.guess(9)
puts test.guess(2)
puts test.solved?
=end



# 5. Reflection 

#I got really confused about class instance variables and thought Ruby was crazy, then I realized I put my Exception end statement in the wrong place causing my definition statement not to function properly.  I learned to CHECK MY CODE! before wasting an 30 minutes researching