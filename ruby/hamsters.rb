puts "Enter hamster's name."
name=gets.chomp

puts "Choose a volume level between 1-10 (10 is squeakiest)"
volume=gets.chomp.to_i

puts "Enter fur color"
color=gets.chomp

puts "Is this hampster (ready/not ready) for adoption?"
adoption=gets.chomp

puts "Estimated age?"
age=gets.chomp.to_i

if age==0
  age=nil
end


puts "#{name} is the newest hamster to join the Hamster Sanctuary. This new friend is approximately #{age} years old and has a beautiful #{color} coat. Squeakiness level is ranked at a #{volume}. This candidate is #{adoption} for adoption."