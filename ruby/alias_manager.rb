p "Welcome, please state your first and last name."
  real_name = gets.chomp

# reverse order of first and last name
real_name = real_name.split(' ').reverse
# separate letters into array
real_name = real_name.join.split('')
# change each letter to next in alphabet
real_name.map! {|letter| letter.next }
# join letter together
real_name = real_name.join('')


p "Great. your new name is #{real_name}."

