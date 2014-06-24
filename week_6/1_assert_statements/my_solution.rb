# U2.W6: Testing Assert Statements

#COMPLETE

# I worked on this challenge by myself.

# 2. Review the simple assert statement
=begin
def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }
=end
# 2. Pseudocode what happens when the code above runs
=begin
Check if a section of code works, declare "Assertion failed!" if it does not.

=end

#Create name
#check if name is "bettysue"
#check if name is "billybob"


# 3. Copy your selected challenge here

# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names
# 1)
# 2)

 # This is the file you should end up editing. 
 
def bakery_num(num_of_people, fav_food)
  #initialize variables to default
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1}
  pie_qty = 0
  cake_qty = 0
  cookie_qty = 0

  # raise error if requested food is not in list
  raise ArgumentError.new("You can't make that food") if my_list[fav_food] === nil

  if fav_food == "cookie"
    cookie_qty = num_of_people
  elsif fav_food == "cake"
    cake_qty = num_of_people / my_list["cake"]
    cookie_qty = num_of_people % my_list["cake"]
  else fav_food == "pie"
    pie_qty = num_of_people / my_list["pie"]
    cake_qty = (num_of_people % my_list["pie"]) / my_list["cake"]
    cookie_qty = (num_of_people % my_list["pie"]) % my_list["cake"]
  end
  
  answer = "You need to make"
  answer << " #{pie_qty} pie(s)," if pie_qty > 0
  answer << " #{cake_qty} cake(s)," if cake_qty > 0
  answer << " and" if pie_qty > 0 || cake_qty > 0 && cookie_qty > 0
  answer.chop! << "." if cookie_qty == 0  #remove comma and replace with period
  answer << " #{cookie_qty} cookie(s)." if cookie_qty > 0
  
  return answer
end

#-----------------------------------------------------------------------------------------------------
#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
=begin
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 6 cake(s), and 5 cookie(s)."  #WHAAAAAT? I thought I said I wanted cake!
 
=end


# 4. Convert your driver test code from that challenge into Assert Statements

def assert
  raise "Assertion failed!" unless yield
end

assert { p bakery_num(24, "cake") == "You need to make 4 cake(s)." }
assert { p bakery_num(41, "pie") == "You need to make 5 pie(s), and 1 cookie(s)." }
assert { p bakery_num(24, "cookie") == "You need to make 24 cookie(s)." }
assert { p bakery_num(4, "pie") == "You need to make 4 cookie(s)." }
assert { p bakery_num(130, "pie") == "You need to make 16 pie(s), and 2 cookie(s)." }
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
assert { p bakery_num(41, "cake") == "You need to make 6 cake(s), and 5 cookie(s)." } #WHAAAAAT? I thought I said I wanted cake!


# 5. Reflection

# Since yield is the last thing called, if it is TRUE, the assert function returns TRUE.  I was worried that I needed to add a TRUE statement, but then I got doubles.
