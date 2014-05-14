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
=begin
def median (arr)
  arr.sort!
  arr_mid = arr.length / 2
  if arr.length % 2 == 1
    return arr[arr_mid]
  else
    if arr[arr_mid].is_a? String
      return arr[arr_mid-1]
    else
      puts 'even number'
      return (arr[arr_mid] + arr[arr_mid-1]).fdiv(2)
    end
  end
 end

=end


# 3. Refactored Solution

def median (arr)
  arr.sort!
  arr_mid = arr.length / 2
  
  # return middle value if odd length
  return arr[arr_mid] if arr.length % 2 == 1 
  
  #round down for middle index if an array of strings
  return arr[arr_mid-1] if arr[arr_mid].is_a? String 
  
  # Average middle 2 numbers if even-length array of numbers
  return (arr[arr_mid] + arr[arr_mid-1]).fdiv(2) 
  
end

# 4. Reflection 
=begin
I'm not sure that I made my refactor clearer, though certainly shorter.  I added comments to clarify so the refactor is probably longer if you include those.

I had a major stumble on the array index count.  I was get a false positive on one of the odd length arrays because the number after the actual median was the same.  That made it harder to understand, but a better lesson.

I had no problem with figuring the string part out.  Got it on the first try.  I tend to stumble on the wrong stuff.
=end


