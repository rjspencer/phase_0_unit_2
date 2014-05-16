# U2.W4: Create Accountability Groups


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: students = Array of names
# Output: groups = Array of groups, each group an array of names
# Steps:

=begin
Determine number of groups needed
	Group count = divide students by 4
	If division remainder, add 1 more to group count
	While loop through students until end
		add 4 students to temp array
		nil values are ok
		add temp array to groups
	return groups
=end

# 3. Initial Solution
=begin
def group_creator (students)
	groups = Array.new
	#puts "Groups: #{groups} is an array? #{groups.is_a?}"
	group_count = students.length / 4
	if (students.length % 4) > 0
		group_count += 1
	end
	puts "Group Count: #{group_count}"
	i=0
	while i < group_count
		x = i * 4
		groups << [students[x], students[x+1], students[x+2], students[x+3]]
		i += 1
	end
	puts "Groups: #{groups}.  Is an array? #{groups.kind_of?(Array)} "
	return groups
end

students = ['John Smith', 'Jane Doe', 'Henry Winkler', 'Carrie Fisher', 'Gerald Ford', 'Mitt Romney', ]

group_creator(students)
=end


# 4. Refactored Solution

def group_creator (students)
	students.shuffle
	groups = Array.new
	group_count = students.length / 4

	if (students.length % 4) > 0
		group_count += 1
	end

	i=0
	while i < group_count
		x = i * 4
		groups << [students[x], students[x+1], students[x+2], students[x+3]]
		i += 1
	end
	return groups
end


# 1. DRIVER TESTS GO BELOW THIS LINE
=begin
	
rescue # Code to test
require_relative "my_solution" 

# Test Data
students = ['John Smith', 'Jane Doe', 'Henry Winkler', 'Carrie Fisher', 'Gerald Ford', 'Mitt Romney', 'Ben Stiler', 'George Washington', 'John Smith', 'Jane Doe', 'Henry Winkler', 'Carrie Fisher', 'Gerald Ford', 'Mitt Romney', 'Ben Stiler', 'George Washington']

describe "group_creator" do
   it "should return an array of arrays" do
      group_creator(students).kind_of?(Array)
   end
   it "should return an array with at least ( number of students / 4 ) arrays" do
      group_creator(students).length >= ( students.length / 4 )
   end
   it "should return an array with no more than ( number of students / 4 + 1) arrays" do
      group_creator(students).length <= ( (students.length / 4) + 1 )
   end
   it "should have the same number of students in all arrays as were passed to the method"  do
      count=0
      group_creator(students).each do |group|
         count += group.length
      end
      count === students.length
   end
end
=end


# 5. Reflection 
=begin
I don't see much to refactor.  I think I could add additional functionality.  Currently, a group of 1 is possible.  Looking at the remainder could help.  If the remainder is 1, add a 5th person to the last group.  If the remainder is 2, pull one student from the last group and make two groups of 3.



=end