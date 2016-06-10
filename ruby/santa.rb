class Santa
  attr_reader :ethnicity
  attr_accessor :gender, :reindeer_ranking, :age

  def initialize (gender, ethnicity)
    puts "Initializing Santa instance.."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    puts "This is a #{@ethnicity} #{@gender} Santa with an age of #{@age}."
  end

  def speak
    puts "Ho, ho, ho! Haaaapy holidays!"
  end

  def eat_milk_and_cookies(type)
    puts "That was a good #{type} cookie!"
  end

  def celebrate_birthday
    @age += 1
    p "It's a birthday! This Santa is now #{@age}-years-old!"
  end

  def get_mad_at(reindeer_name)
    if @reindeer_ranking.include?(reindeer_name)
      @reindeer_ranking.delete(reindeer_name)
      @reindeer_ranking.push(reindeer_name)
      puts "The new ranking is: #{@reindeer_ranking}"
    else
      puts "Hmm.. that is not a registered reindeer."
    end
  end

end

santas = []

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]

example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

# example_genders.length.times do |num|
#   santas << Santa.new(example_genders[num], example_ethnicities[num])
# end

# make array for santa army
# define a function for making santas, that accepts the num of santas as parameters
# do <parameters> TIMES...
# make new santas with the necessary given parameters
# define parameters: find the random gender, ethnicity in the arrays
# print result

# p rand(example_genders.length)
# p example_genders[rand(example_genders.length)]
# p example_ethnicities[rand(example_ethnicities.length)]
# p rand(example_ethnicities.length)
# p @example_genders[rand(@example_genders.length)]

# p Santa.new("female", "Canadian")



def make_santas(num, gender_array, ethnicity_array)
  num.times do |num|
  p Santa.new(gender_array[rand(gender_array.length)], ethnicity_array[rand(ethnicity_array.length)])
  end
end
make_santas(5, example_genders, example_ethnicities)



# DRIVER CODE

# p santas[0].celebrate_birthday
# wayne = Santa.new("gender fluid", "elvin")
# donald = Santa.new("non-binary", "troll")
# donald.celebrate_birthday
# donald.get_mad_ad("Dasher")
# p donald.reindeer_ranking
# p wayne.gender = "male"

# sammy = Santa.new("male", "latino")
# sammy.change_gender("unidentified")
# p sammy.ethnicity


# ALTERNATE ARRAY METHOD
# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")


# def make_a_santa(gender_array, ethnicity_array)
#   p Santa.new(gender_array[rand(gender_array.length)], ethnicity_array[rand(ethnicity_array.length)])
# end
# make_a_santa(example_genders, example_ethnicities)
