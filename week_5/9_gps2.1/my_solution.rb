# U2.W5: Bakery Challenge GPS

# I worked on this challenge with: 

# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names
# 1) Ryan
# 2) Derek

 # This is the file you should end up editing. 
 
#giving two arg - number of people and favorite food 
=begin
def bakery_num(num_of_people, fav_food)
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1} #setting up a hash with fd and nm of people served
  
  #initialize variables to default
  pie_qty = 0
  cake_qty = 0
  cookie_qty = 0
  has_fave = false 

  my_list.each_key do |k| #checking to see if the food given is something we can make
    if k == fav_food
      has_fave = true
      break
    end
  end
  raise ArgumentError.new("You can't make that food") if has_fave == false

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
  answer.chop! << "." if cookie_qty == 0
  answer << " #{cookie_qty} cookie(s)." if cookie_qty > 0
  
  return answer
end
 

#-----------------------------------------------------------------------------------------------------
#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 6 cake(s), and 5 cookie(s)."  #WHAAAAAT? I thought I said I wanted cake!


=end

# Our Refactored Solution

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
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 6 cake(s), and 5 cookie(s)."  #WHAAAAAT? I thought I said I wanted cake!



#  Reflection 

# I changed the driver code, even though I was not supposed to.  I felt it wasn't elegant enough.

# fixing ugly code can be confusing.  I think we got caught up too much in how the old code was working instead of what it was doing.  In the future, I will focus on the entire code sections instead of each individual loop.  

# I think the finished product is much easier to read.



