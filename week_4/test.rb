# encoding: utf-8

def new_password ( pass_length=15, special_chars=FALSE )
	encrypt_values = (1..9).to_a + ('A'..'Z').to_a + ('a'..'z').to_a
	encrypt_values.concat(['$', '@', '&', '*', '#']) if special_chars == TRUE 

	return encrypt_values.sample(pass_length).join
end


puts "New Password: #{new_password(10, TRUE)}"

 y = [1,2,3].each {|x| x + 1}
 z = [1,2,3].map {|x| x + 1}
 puts "EACH: #{y} , MAP: #{z}"

 x = Array.new
 x = (1..100).to_a
 sum = 0
x.map{ |z| sum += z }
puts "Average: #{ sum / x.size.to_f }"