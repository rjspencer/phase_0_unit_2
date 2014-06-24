# U2.W6: Refactoring for Code Readability


# I worked on this challenge by myself.


# Original Solution
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

DRIVER TESTS GO BELOW THIS LINE

my_card_valid =    CreditCard.new(4408041234567893)
my_card_invalid =  CreditCard.new(4408041234567892)
puts "Valid Card: #{my_card_valid.check_card }"
puts "Invalid Card: #{my_card_invalid.check_card }"

#my_card_too_short =CreditCard.new(12345678)
#my_card_too_long = CreditCard.new(123456789123456789)

=end

# Refactored Solution

class CreditCard
	def initialize(card_number)
		#Verify card_number length is 16
		# Could convert to string and check .length as others have done, but I'm guessing string conversion would make it a lot slower
		raise ArgumentError.new("Credit card number must be 16 digits") unless card_number >= 1000000000000000 && card_number <= 9999999999999999 
		@card_number = card_number
	end

	def check_card()
		luhn_arr = [] # initialize array so we can add to it
		count = 0 # start a counting variable at 0

		#convert card_number to string, then an array at every digit, and loop through each digit
		@card_number.to_s.split("").each do |x|  
			count += 1 #increase digit counter
			if count % 2 === 1 #if digit counter is odd...
				y = x.to_i * 2 #back to integer, double
				z = y.to_s.split("") #back to string and split
				luhn_arr << z[0].to_i + z[1].to_i #add to new array as integers
					#if number is less than 5, doubling it will only produce 1 digit, but z[1] will just be nil, not raise and error
			else
				luhn_arr << x.to_i # if digit counter is even, just add to array as integer
			end
		end
		return (luhn_arr.reduce(:+)) % 10 === 0 # sum all the digits of the luhn array, divide by 10, and verify there is no remainder
	end
end




# 1. DRIVER TESTS GO BELOW THIS LINE
def assert
  raise "Assertion failed!" unless yield
end

my_card_valid =    CreditCard.new(4408041234567893) 
my_card_invalid =  CreditCard.new(4408041234567892)
puts "Valid Card Test: PASS" unless assert {my_card_valid.check_card }
puts "Invalid Card Test: PASS" unless assert {!my_card_invalid.check_card }

#my_card_too_short =CreditCard.new(12345678)
#my_card_too_long = CreditCard.new(123456789123456789)




# DRIVER TESTS GO BELOW THIS LINE






# Reflection 

=begin
I'm not sure how much I was supposed to add to this.  I feel my code was pretty succinct.  I could refactor someone else's code, but then I would get this answer.  Either way I'm behind and I feel pretty comfortable here so I will be moving on.
=end