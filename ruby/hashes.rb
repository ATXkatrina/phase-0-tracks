# start with empty array
# greet designer, prompt for values one at a time, storing each value and adding to hash with cooresponding key
# print hash
# ask if designer wants to update any key
# if key is given, ask for new value and store
# else if designer says 'none', move on
# print hash
# exit


client_info = {}
puts "Hello, let's start with the client's name"
  name = gets.chomp
  client_info[:name] = name

puts "What is his/her age?"
  age = gets.chomp.to_i
  client_info[:age] = age

puts "Does #{name} have children? (y/n)"
  children = gets.chomp
  if children == "y"
    kids = true
  else
    kids = false
  end
  client_info[:children] = kids

puts "What is #{name}'s decor theme?"
  theme = gets.chomp
  client_info[:decor_theme] = theme

p client_info

puts "Would you like to update a key? If so, please name it. Otherwise, type 'none'."
  answer = gets.chomp.to_sym
  if client_info.has_key?(answer)
    puts "What is the new value?"
    new_value = gets.chomp
    client_info[answer] = new_value
  else
    puts "Enjoy designing for #{name}!"
  end

p client_info

# puts client_info[:answer]