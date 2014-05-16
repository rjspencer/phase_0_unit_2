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
	puts "Groups: #{groups} "
	return groups
end

students = ['John Smith', 'Jane Doe', 'Henry Winkler', 'Carrie Fisher', 'Gerald Ford', 'Mitt Romney', ]

group_creator(students)

# 4. Refactored Solution








# 1. DRIVER TESTS GO BELOW THIS LINE



# 5. Reflection 


