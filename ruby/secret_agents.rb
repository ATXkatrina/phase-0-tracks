# ENCRYPT PSUEDOCODE
# define method with string parameter
# define a counter variable
# create while loop for each index in string
# for each index, assign string index to use .next method
# increase counter variable by 1
# print new string to screen

# had to put if statement in for Z since it makes "ab"
def encrypt(string)
   index = 0
   while index < string.length
     if string[index] == "z"
       string[index] = "a"
     else
        string[index] = string[index].next
     end
     index = index + 1
   end
   return string
end

#encrypt("xyz")

# DECRYPT PSUEDOCODE - original
# define method with string parameter
# define a counter variable
# create while loop for each index in string
# for each index, assign string index to use .next method
# increase counter variable by 1
# print new string to screen

#DEC PSU - second try
# for each character in string:
# get positoin of string entered
# need to determine position of letter in alphabet
# minus 1 position from determined alphabet position
# update character in string postion
# print to screen

def charChange(char)
   alpha = "abcdefghijklmnopqrstuvwxyz"
   charPosition = alpha.index(char)
   newChar = alpha[charPosition - 1]
   return newChar
end


def decrypt(string)
  index = 0
   while index < string.length
     movedChar = charChange(string[index])
     string[index] = movedChar
     index = index + 1
   end
   return string
end

# Test the nested methods.. will return the given input
puts decrypt(encrypt("swordfish"))

# INTERFACE QUESTIONS
# ask user if they want to encrypt/decrypt
# save response
# if response is to encrypt, print a message asking user for the password
# save the password
# print the method using the password as a argument
# repeat last three steps for decrypt
# end
puts "Agent, would you like to encrypt or decrypt a password today?"
  response = gets.chomp
  if response == "encrypt"
    puts "Great, we'll encrypt. What is the password?"
    password = gets.chomp
    puts encrypt(password)
  else
    puts "Looks like we're decrypting. What's the password?"
    password = gets.chomp
    puts decrypt(password)
  end

