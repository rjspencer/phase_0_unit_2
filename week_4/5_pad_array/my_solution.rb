# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input? Integer - New element count, Optional value to use as the pad
# What is the output? (i.e. What should the code return?) Code should return a new array or !modify the array it is called on 
# What are the steps needed to solve the problem?
=begin
If array length is less than new element count
  Push pad onto end of array while array length < new element count
return array

If array length is less than new element count
  Push pad onto end of !this array while array length < new element count
End

=end

# 2. Initial Solution
=begin
class Array
  def pad ( count , pad = nil )
    temp_array = self.clone
    while temp_array.length < count
      temp_array << pad
    end
    return temp_array
  end

  def pad! ( count , pad = nil )
    while self.length < count
      self << pad
    end
    return self
  end
end
=end
# 3. Refactored Solution

class Array
  def pad ( count , pad = nil )
    temp_array = self.clone
    temp_array << pad while temp_array.length < count
    return temp_array
  end

  def pad! ( count , pad = nil )
    self << pad while self.length < count
    return self
  end
end

# 4. Reflection 
=begin
      I like the idea of extending a class.  It would  seem to enable even more natural type in Ruby.  However, I would fear that too much extension on a built in class could cause confusion for other programmers.  I think I read that we can make new classes that inherit the features of another class.  Then we can create our own documentation and there are no preconcieved notions of what it should do.


          I like the readability of my while statements.
=end