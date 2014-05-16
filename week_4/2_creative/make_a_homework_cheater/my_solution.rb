# U2.W4: Homework Cheater!


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: title, subject, date, thesis, pronoun
# Output: String - Length 100+ chars
# Steps:
=begin
create essay_writer method


=end

# 3. Initial Solution

def essay_writer(title, subject, date, thesis, pronoun)
	puts title
	puts subject
	puts date
end

# 4. Refactored Solution








# 1. DRIVER TESTS GO BELOW THIS LINE

# Test Data

title = "The First Shogun"
subject = "Tokugawa Ieyasu"
date = 1603
thesis = "His most important contribution to history is that he founded the Tokugawa period, a peaceful time that lasted over 200 years."
pronoun = "male"

test_data = essay_writer(title, subject, date, thesis, pronoun) 

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
  		test_data.include? date
  	end
  	it "should include the thesis" do
  		test_data.include? thesis
  	end
end






# 5. Reflection 


