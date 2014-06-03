# U2.W6: Drawer Debugger


# I worked on this challenge [by myself, with: ].


# 2. Original Code

class Drawer
	attr_reader :contents

	# Are there any more methods needed in this class?

	def initialize()
		@contents = []
		@open = true
	end

	def open
		@open = true
	end

	def close
		@open = false
	end 

	def add_item(item)
		@item = item
		@contents << @item
	end

	def remove_item(item = @contents.pop) #what is `#pop` doing? Defaults to removing the last element of the array
		@item = item
		@contents.delete(item)
		return item
	end

	def dump  # what should this method return? 
		@contents = []
		puts "Your drawer is empty."
	end

	def view_contents
		if @contents.empty?
			puts "The drawer is empty"
		else
			puts "The drawer contains:"
			@contents.each {|silverware| puts "- " + silverware.type }
		end
	end
end

class Silverware
	attr_reader :type

	# Are there any more methods needed in this class?

	def initialize(type, clean = true)
		@type = type
		@clean = clean
	end

	def eat
		puts "eating with the #{type}"
		@clean = false
	end

	def clean_silverware
		puts "cleaning the #{type}"
		@clean = true
	end
end

knife1 = Silverware.new("knife")
silverware_drawer = Drawer.new

silverware_drawer.add_item(knife1)
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")

silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return? nothing

fork = Silverware.new("fork")
fork.eat
fork = silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...

# "fork".eat

#BONUS SECTION
# puts fork.clean

# DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 