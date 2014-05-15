# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

=begin
Create separate_comma method that accepts 1 integer
Convert integer to string
Split string to array
Reverse array
Set comma_num to ''
Loop through array
	Prepend each value to comma_num
	if (array index + 1) % 3 is 0 then prepend comma to comma_num
return comma_num
=end


# 2. Initial Solution

def separate_comma (num)
	num.to_s.reverse
	puts num


end

separate_comma(1000)

puts 1000.to_s.reverse

# 3. Refactored Solution



# 4. Reflection 