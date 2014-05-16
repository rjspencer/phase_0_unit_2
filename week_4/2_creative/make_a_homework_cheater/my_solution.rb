# U2.W4: Homework Cheater!


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: title, subject, date, thesis, pronoun
# Output: String - Length 100+ chars
# Steps:
=begin
create essay_writer method
return a few paragraphs with passed variables in it

=end

# 3. Initial Solution
=begin
def essay_writer(title, subject, date, thesis, pronoun)
	return "#{title} by Ryan J Spencer.\nI have written about a lot of different subjects in my day, but few could be dearer to my heart than #{subject}.  I feel that not enough people know about #{pronoun}, and I don't think I should keep such an awesome secret any longer.  \nI want you to think back to the year #{date} and imagine what it was like to be #{subject}.  #{thesis}.  \n#{pronoun} changed our world and I think we are all better for it"
end
=end
# 4. Refactored Solution

def essay_writer(title, subject, date, thesis, pronoun)
  if pronoun.upcase == "MALE" 
    him_her = 'him'
    he_she = 'he'
  elsif pronoun.upcase == "FEMALE"
    him_her = 'her'
    he_she = 'she'
  end
    
	return "#{title} by Ryan J Spencer.\nI have written about a lot of different subjects in my day, but few could be dearer to my heart than #{subject}.  I feel that not enough people know about #{him_her}, and I don't think I should keep such an awesome secret any longer.  \nI want you to think back to the year #{date} and imagine what it was like to be #{subject}.  #{thesis}.  \n#{he_she.capitalize} changed our world and I think we are all better for it"
end


# 1. DRIVER TESTS GO BELOW THIS LINE

# Test Data

title = "The First Shogun"
subject = "Tokugawa Ieyasu"
date = 1603
thesis = "His most important contribution to history is that he founded the Tokugawa period, a peaceful time that lasted over 200 years."
pronoun = "male"

test_data = essay_writer(title, subject, date, thesis, pronoun) 
#puts test_data

describe "essay_writer" do
   	it "should return a non-empty string" do
      test_data.kind_of?(String) || test_data.length >= 1
  	end
  	it "should be at least 100 characters" do
  		test_data.length >= 100
  	end
  	it "should include the title" do
  		test_data.include? title
  	end
  	it "should include the subject" do
  		test_data.include? subject
  	end
  	it "should include the date" do
  		test_data.include? date.to_s
  	end
  	it "should include the thesis" do
  		test_data.include? thesis
  	end
end





# 5. Reflection 
=begin
I don't like putting the tests in the same file.  Its too much work to keep moving comments around to test things.  It reminds me of finding missing semicolons.

This one was hard to wrap my head around what you were asking for because it really only needs one line of code, so I though I was missing something.

=end

