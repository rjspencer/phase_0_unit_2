# U2.W4: Cipher Challenge


# I worked on this challenge with: .
#Ryan Spencer
#Steve Loar


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.

=begin

def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the ruby docs.
  decoded_sentence = []
  # Rotate(4) would shift all characters four places
  # Hash is very readable, and makes it easy to find what you are looking for, making it great for this use.
  # Hashes are slow than arrays, but they are more readable, which is more important
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
            "g" => "c",   #
            "h" => "d",
            "i" => "e", 
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}
            
  input.each do |x| # What is #each doing here?
    # .each is iterating thru the input array, the coded message passed to the method that we downcased and split
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
    # We need to set this on each loop iteration to translate properly.  We don't want the true to pass from the last iteration
    cipher.each_key do |y| # What is #each_key doing here?
      #  Cipher is our alpha decoding hash,  this loops through each key of the hash.
  
      if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
        # 'x' is our letter, 'y' is the key of the hash.  'x' is from the input.each outer loop.  'y' is the key from the cipher.  They are both letters/chars
        puts "I am comparing x and y. X is #{x} and Y is #{y}."
        decoded_sentence << cipher[y]
        found_match = true
        break  # Why is it breaking here?
        # We found a match, no need to check against any other letters.
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
        # If the letter equals any of those characters, set to space.  
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
        #  Take range 0 to 9 and create an array from it.  Seems inefficient, create once before the iterations?
        decoded_sentence << x
        found_match = true
        break
      end 
    end
    if not found_match  # What is this looking for?
      # If the character in the encoded message is not in the any of our checks, add as is
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
 
  if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help. 
    # Looking for any numbers in the decoded sentence
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
    # Take each of the numbers in the message and replace them with itself / 100
  end  
  return decoded_sentence # What is this returning?        
  # Return the decoded sentence
end

=end

# Your Refactored Solution

def north_korean_cipher(coded_message)
    alphabet = ('a'..'z').to_a 
    cipher_alphabet = alphabet.rotate(4)
    cipher = Hash[cipher_alphabet.zip(alphabet)] 
    spaces = ["@", "#", "$", "%", "^", "&", "*"] 
    
    decoded_sentence = "" 
    coded_message.downcase.each_char do |element|
      if cipher.include?(element) 
        decoded_sentence << cipher[element] 
      elsif spaces.include?(element) 
        decoded_sentence << " " 
      else 
        decoded_sentence << element 
      end
     end
  
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } if decoded_sentence.match(/\d+/) 
  
    return decoded_sentence 
end




# Driver Code:

p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.") ==  "our people eat the most delicious and nutritious foods from our 10000 profitable farms."
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!") == "our nukes are held together by grape-flavored toffee. don't tell the us!"
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.") =="if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman."
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")  == "next stop: south korea, then japan, then the world!"
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?") == "can somebody just get me 100 bags of cool ranch doritos?" 

# Reflection
 
=begin
Good pair.  He drove most of the time since he had a chance to look it over before we started.  He taught me a few things, like a regular expression comparison.  I showed him how to fit an 'if' statement on one line.  I thought the way he built the key hash on 3 lines was clean and elegant.  We collaborated using Nitrous.io and it worked fairly well.  There were a few connection hiccups, but it worked.

I feel like ciphers are a fun educational exercise, but I doubt we will ever actually use this, though we will likely use these skills to modify strings, arrays and hashes in other ways.  I imagine ciphers are mostly written in low level or assembly language.  True ciphers are very advanced mathmatic equations, and ruby would take too long.


