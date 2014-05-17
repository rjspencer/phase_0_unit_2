# U2.W4: Refactor Cipher Solution


# I worked on this challenge [by myself, with: ].


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

# Method to encode a sentence
def translate_to_cipher(sentence)
  alphabet = ('a'..'z').to_a  # create lower case a to z alphabet array
  
  # shift alphabet 4 characters, combine with normal alphabet into arrays of 2... creating a shift cipher key
  # Hash converts the 2 element arrays into hashes
  # put cipher key hash into cipher variable
  cipher = Hash[alphabet.zip(alphabet.rotate(4))]  
  spaces = ["@", "#", "$", "%", "^", "&", "*"] # Set random character to use as spaces, obscuring the sentence structure 
    
  original_sentence = sentence.downcase # We only have keys for lower case letters, convert message to lowercase
  encoded_sentence = [] #  Prepare an array to hold encoded message
  original_sentence.each_char do |element|  # Loop through each character of the passed sentence
    if cipher.include?(element)             # If the character in the sentence is in our shift cipher key
      encoded_sentence << cipher[element]   # Add shifted character to encoded message variable
      elsif element == ' '                 # or
      encoded_sentence << spaces.sample   # if character is a space, add a random character to encoded message
      else                               # or
      encoded_sentence << element     # add the character to encoded message without encoding it (numbers, punctuation)
      end
     end
    
  return encoded_sentence.join  # Combine the encoded message array into a string and return it 
end


# Questions:
# 1. What is the .to_a method doing?
# Putting each letter of the alphabet into a different place in an array

# 2. How does the rotate method work? What does it work on?  
# It shifts the beginning of the (x) elements over while adding the beginning elements to the end

# 3. What is `each_char` doing? 
# Looping through the sentence and applying code to each letter/space/number

# 4. What does `sample` do?
# Randomly picks an array element

# 5. Are there any other methods you want to understand better?


# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse?


# 7. Is this good code? What makes it good? What makes it bad?
#  This code works and does so efficiently.  Therefore it is good.
#  However, I think even N. Korea has better encryption than this, therefore it is bad.  This code meets its specifications, so the culprit is the specifications.  
#  1st graders can be taught to break this code in a matter of minutes.  Even if capital letters were involved, there are only 51 other possibilities each letter can shift to and once you discover one letter, everything falls apart.

# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?
# No.  Spaces are random and will change every time

p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")





# 5. Reflection 

