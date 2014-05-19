# U2.W4: Review and Refactor: Pad an Array

# I worked on this challenge [by myself, with: ].



# 1. First Person's solution I liked


#    What I learned from this solution

#Very similiar to my work, but a different way of writting it.  I like to see how others write the same thing, since readability is so important.  I have shorter while statements and then the only difference is the variable structure and the use of push() instead of <<
# Copy solution here:

=begin
class Array

	def pad!(min_size, pad_value = nil)
		while self.length < min_size
			self.push(pad_value)
		end
	self
	end

def pad(min_size, pad_value = nil)
@arr = self.clone
	while @arr.length < min_size
		@arr.push(pad_value)
	end
@arr
end

end

=end




    # 2. Second Person's solution I liked  maddisonb@github
#    What I learned from this solution
    
  #  fill()  In my searching for how to handle this problem, I never guessed this function, the almost perfect function for this, would exist.  Unfortunately, it does not seem to be able to change an array's length.  Since you have to add elements to the array and then have to fill it, it doesn't work as well.
        
# Copy solution here:
=begin
    class Array

    # Non-Destructive
	def pad(min, pad_value = nil)
		if self.length < min
			filler = min - self.length
			dup.fill(pad_value, self.length, filler)

		else
			return dup
		end
	end

    # Destructive
	def pad!(min, pad_value = nil )
		if self.length < min 
			filler = min - self.length
			self.fill(pad_value, self.length, filler)
		else
			return self
		end
	end

end
=end


# 3. My original solution:
=begin
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

=end
  
# 4. My refactored solution:

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



# 5. Reflection