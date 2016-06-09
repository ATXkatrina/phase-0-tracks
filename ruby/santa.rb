

class Santa

  def initialize (gender, ethnicity)
    puts "Initializing Santa instance.."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaapy holidays!"
  end

  def eat_milk_and_cookies(type)
    puts "That was a good #{type} cookie!"
  end

end

Wayne = Santa.new("gender fluid", "elvin")