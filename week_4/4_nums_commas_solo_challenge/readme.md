[Week 4 Home](../)

# U2.W4: Separate Numbers with Commas

## Learning Competencies
- Break down problems into implementable pseudocode
- Iterate through data structures and manipulate the content
- Use if/else statements, string methods, while/until loops, Enumerable#each methods
- Use strings, integers, arrays, and/or hashes

Create separate_comma method that accepts 1 integer
Convert integer to string
Split string to array
Reverse array
Set comma_num to ''
Loop through array
	Prepend each value to comma_num
	if (array index + 1) % 3 is 0 then prepend comma to comma_num
return comma_num

## Summary
Write a method `separate_comma` which takes an integer as its input and returns a comma-separated integer as a string.  Like this:

```ruby
separate_comma(1000)    # => "1,000"
separate_comma(1000000) # => "1,000,000"
separate_comma(0)       # => "0"
separate_comma(100)     # => "100"
```

*NOTE: Even if you are comfortable with regular expressions, do not use them in this challenge, it's all about the logic!*

You have some rspec for this. It's saved in your `my_solutions` directory. If you can think of any cases the RSpec doesn't cover, see if you can write tests using Driver Test Code that test the missing case.

## Release 0: Write [Driver Test Code](https://github.com/Devbootcamp/phase_0_handbook/blob/master/coding_references/driver_code.md)
## Release 1: [Pseudocode](https://github.com/Devbootcamp/phase_0_handbook/blob/master/coding_references/pseudocode.md)
## Release 2: [Initial Solution](https://github.com/Devbootcamp/phase_0_handbook/blob/master/coding_references/initial_solution.md)
## Release 3: [Refactored Solution](https://github.com/Devbootcamp/phase_0_handbook/blob/master/coding_references/refactoring.md)
## Release 4: [Reflect](https://github.com/Devbootcamp/phase_0_handbook/blob/master/coding_references/reflection_guidelines.md)
## Release 5: Push your solution to Github
