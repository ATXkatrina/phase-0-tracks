# define a module with two methods:
# one 'angry' method that takes a string and returns a string with an added '!!! :(' string
# and one 'happy' method that takes a string and returns a string with an added '!!! :D' string
# call the methods with driver code

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end
  def yell_happily(words)
    words + "!!!" + " :D"
  end
end

class Baboon
  include Shout
end

class Warthog
  include Shout
end


my_baboon = Baboon.new
p my_baboon.yell_angrily("Yayaya")
p my_baboon.yell_happily("Jajajaa")

my_warthog = Warthog.new
p my_warthog.yell_angrily("Hurumph")
p my_warthog.yell_happily("Eeeeahh")


# new_shout = Shout.yell_angrily("Hello")
# new_shout_2 = Shout.yell_happily("Hi there")

