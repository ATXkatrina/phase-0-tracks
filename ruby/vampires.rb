puts "Good afternoon. What is your name?"
  name = gets.chomp

puts "Can you tell me your age?"
  alleged_age = gets.chomp

puts "And what year were you born in?"
  birth_year = gets.chomp

puts "You like garlic bread, right? (yes/no)"
  garlic_ok = gets.chomp

puts "Would you be enrolling in the health plan?(yes/no)"
  health = gets.chomp

# check age
    current_year = 2016
    birth_year = 1987
    real_age = current_year -  birth_year

    # if real_age == alleged_age

if real_age == alleged_age
  is_vampire = true
end

puts is_vampire