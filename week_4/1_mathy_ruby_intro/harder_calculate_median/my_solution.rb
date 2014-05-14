# U2.W4: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

=begin
rspec ./median_spec.rb:9 # median is defined as a method                                                                                 
rspec ./median_spec.rb:13 # median requires a single argument                                                                            
rspec ./median_spec.rb:17 # median returns the correct median of an odd-length array                                                     
rspec ./median_spec.rb:21 # median returns the correct median of an even-length array                                                    
rspec ./median_spec.rb:25 # median returns the correct median for an unsorted array                                                      
rspec ./median_spec.rb:29 # median returns the correct median for an array filled with strings **BONUS**     
=end

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

=begin
Create median() method.
Input an array.
Sort the array from lowest to highest (or the other way around should work too).

If array length %y 2 === 0
Return array value at array length / 2. 

ELSE or If array length % 2 === 1
If array value at position (array length / 2) is a string
return array value at position (array length / 2)
Else
return (array[array length / 2] + array[array length / 2 + 1])/2

=end

# 2. Initial Solution

def median (arr)
  arr.sort!
  arr_mid = arr.length / 2
  if arr.length % 2 == 1
    puts "odd\n"
    return arr[arr_mid]
  else
    if arr[arr_mid].is_a? String
      puts 'even string\n'
      return arr[arr_mid-1]
    else
      puts 'even number'
      return (arr[arr_mid] + arr[arr_mid-1]).fdiv(2)
    end
  end
 end




# 3. Refactored Solution



# 4. Reflection 