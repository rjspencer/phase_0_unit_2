# Code to test
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
