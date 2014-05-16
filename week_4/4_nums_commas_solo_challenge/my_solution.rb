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
Split string to array (or loop and chop)
Reverse array
Set comma_num to ''
Loop through array
	Prepend each value to comma_num
	if (array index + 1) % 3 is 0 then prepend comma to comma_num
return comma_num
=end


# 2. Initial Solution
=begin

def separate_comma (num)
	puts "Length: #{num.to_s.length}"

	num_array  = num.to_s.reverse.split('') # each_byte instead of split?
	puts num_array
	comma = ''
	count = 0
	num_array.each do |x|
		if count % 3 === 0 && count > 0
			comma.insert(0, ',')
		end
		count += 1
		comma.insert(0, x)
	end
	puts "Comma: #{comma}"
	return comma
end

=end

# 3. Refactored Solution

def separate_comma (num)
	num_array  = num.to_s.reverse.each_char.to_a
	comma = ''
	num_array.each_with_index do |x, count|
		if count % 3 === 0 && count > 0
			comma.insert(0, ',')
		end
		comma.insert(0, x)
	end
	return comma
end

# 4. Reflection 
=begin
I struggled with the .each format.  In my readings, this is a popular tool for Ruby programmers.  Since I want to be one I should act like one, right?

I initially wanted to do a C/PHP 
	for(x=0; x<array.length; x++)
Since having a counting variable seemed natural.  It took me a while to find .each_with_index instead of just .each

=end

# Speed Tests

def separate_comma_split (num)
	num_array  = num.to_s.reverse.split(//)
	comma = ''
	num_array.each_with_index do |x, count|
		if count % 3 === 0 && count > 0
			comma.insert(0, ',')
		end
		comma.insert(0, x)
	end
	return comma
end


def separate_comma_each_char (num)
	num_array  = num.to_s.reverse.each_char.to_a
	comma = ''
	num_array.each_with_index do |x, count|
		if count % 3 === 0 && count > 0
			comma.insert(0, ',')
		end
		comma.insert(0, x)
	end
	return comma
end

beginning_time = Time.now
(1..10000).each { |i| separate_comma_split(i*500) }
end_time = Time.now
puts ".SPLIT -Time elapsed #{(end_time - beginning_time)*1000} milliseconds"

beginning_time = Time.now
(1..10000).each { |i| separate_comma_each_char(i*500) }
end_time = Time.now
puts ".EACH_CHAR -Time elapsed #{(end_time - beginning_time)*1000} milliseconds"