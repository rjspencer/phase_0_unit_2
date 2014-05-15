# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

=begin
Create total() method.
Input an array of numbers.
  >Create a variable sum set to 0.
  >Loop through the array.
  >Add each array value  to sum variable
Return a sum of the numbers in the array.
  
Create sentence_maker method.
Input an array of words
  >Create a variable named sentence set to ''.
  >Loop through the array.
  >Concatenate each value to sentence variable.
  >Capitalize the first letter of sentence.
  >Remove space from end of sentence.
  >Add period to end of sentence.
Return sentence.
=end

# 2. Initial Solution
# Accepts an array of numbers, returns their sum 
=begin
def total (num_arr)  # Success 
  sum = 0
  num_arr.each do |i|
    sum += i
  end
  return sum    
end
=end

# Accepts an array of words, capitalizes first letter, adds spaces, period at the end, and returns completed sentence  
=begin
def sentence_maker (word_arr)   # Success 
  sentence = ''
  word_arr.each do |i|
    sentence << "#{i} " 
  end
  sentence.chop!
  sentence << '.'
  sentence.capitalize!
  return sentence    
end
=end



# 3. Refactored Solution

def total (num_arr)  # Success 
  return num_arr.reduce(:+)
end

def sentence_maker (word_arr)   # Success 
  sentence = ''
  word_arr.each do |i|
    sentence << "#{i} " 
  end
  sentence.capitalize!.chop! << '.'
  return sentence    
end



# 4. Reflection 
=begin
I don't need to initialize my variables beforehand, but I like to make sure they start clean and in the format I expect.  I have had issues in other languages.  I wouldn't think there would be any performance issue as the variable has to be created either way.

The refactor of total() is a major reduction in lines of code.  Underneath, it seems to still be doing the same thing, its just that reduce/inject implicitly knows to loop through the array.  I could have used the word inject, but that sounds wrong.  I think reduce makes more sense since it reduces many array values to one combined value.

My refactoring of sentence_maker() seemed to make no speed difference in a quick test.  All the same things happen so this is as I expected.  I think it is slightly easier to read because it reads left to right what it is doing to the sentence and puts everything together.
=end
