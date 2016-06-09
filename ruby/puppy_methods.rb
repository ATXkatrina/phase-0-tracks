class Puppy
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
    puts "Woof!" * int
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(age)
    age = age*7
    puts age
  end

  def tug_of_war(rope)
     puts "TugTugTug the #{rope}!"
  end

  def initialize
    puts "Initializing new puppy instance..."
  end

end


# DRIVER CODE
spot = Puppy.new

spot.fetch("ball")

spot.speak(3)

spot.roll_over

spot.dog_years(10)

spot.tug_of_war("chicken")


class Cat
  def initialize
    puts "Intializing a new instance of Cat"
  end

  def meow
    puts "Meow!"
  end

  def sit_for_pets(num_of_pets)
    puts "Please pet me #{num_of_pets} times"
    puts "Now I will bite you!"
  end

end

# DRIVER CODE
cats = []

5.times do |cat|
  cats << Cat.new
end

# p cats

cats.each do |cat|
  p cat.meow
  p cat.sit_for_pets(2)
end
