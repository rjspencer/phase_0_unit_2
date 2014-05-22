# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: 16 digit number
# Output: True or False
# Steps:
=begin
Verify number is exactly 16 digits
check_card  ---
turn number into letters
break letters into individual characters
turn individual characters back into numbers
double each number
if result is double digit (>=10) then split into separate numbers again
add all numbers
divide result by 10
if no remainder then valid

=end


# 3. Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits
=begin
class CreditCard
	def initialize(card_number)
		unless card_number >= 1000000000000000 && card_number <= 9999999999999999  
			raise ArgumentError.new("Credit card number must be 16 digits")
		end
		@card_number = card_number
	end

	def check_card()
		luhn_arr = []
		count = 0
		initial_array = @card_number.to_s.split("")
		initial_array.each do |x| 
			count += 1
			if count % 2 === 1
				y = x.to_i * 2
			else
				y = x.to_i
			end
					
			if y < 10
				luhn_arr << y
			else
				z = y.to_s.split("")
				luhn_arr << z[0].to_i 
				luhn_arr << z[1].to_i
			end
		end
		return (luhn_arr.reduce(:+)) % 10 === 0
	end
end
=end


# 4. Refactored Solution

class CreditCard
	def initialize(card_number)
		unless card_number >= 1000000000000000 && card_number <= 9999999999999999  
			raise ArgumentError.new("Credit card number must be 16 digits")
		end
		@card_number = card_number
	end

	def check_card()
		luhn_arr = []
		count = 0
		@card_number.to_s.split("").each do |x| 
			count += 1
			if count % 2 === 1
				y = x.to_i * 2
				z = y.to_s.split("")
				luhn_arr << z[0].to_i + z[1].to_i
			else
				luhn_arr << x.to_i
			end
		end
		return (luhn_arr.reduce(:+)) % 10 === 0
	end
end




# 1. DRIVER TESTS GO BELOW THIS LINE

my_card_valid =    CreditCard.new(4408041234567893)
my_card_invalid =  CreditCard.new(4408041234567892)
puts "Valid Card: #{my_card_valid.check_card }"
puts "Invalid Card: #{my_card_invalid.check_card }"

#my_card_too_short =CreditCard.new(12345678)
#my_card_too_long = CreditCard.new(123456789123456789)

# 5. Reflection 

# My refactor, and all my code really, is pretty specific to the situation.  There isn't much to reuse here, though I did jump back to last week's first math assignment for the quick sum code.  I'm getting more comfortable with chaining methods.  I think the trick is doing it in the form that is readable.

# Write the code in any way that works first.  Get the tests to pass.  Then refactor and check again.  It really made sense on this one.  Almost cut the code in half in a matter of 5 minutes.