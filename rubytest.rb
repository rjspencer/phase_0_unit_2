def testFunction (blah)
	puts "hello"
	puts "math: #{1+2} and #{blah}"
end

testFunction('goat')

class Person
	attr_accessor :name, :age, :your_properties_here

	def initialize (name, age, job = 'unemployed')
		@name = name
		@age = age
		@job = job
	end	

end

ryan = Person.new("Ryan", 32, "Teacher")
puts ryan.name