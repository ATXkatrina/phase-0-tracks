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

end



spot = Puppy.new

spot.fetch("ball")

spot.speak(3)

spot.roll_over

spot.dog_years(10)

spot.tug_of_war("chicken")