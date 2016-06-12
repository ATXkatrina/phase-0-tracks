# define a class of One_ring
# name 3 attributes
#   -ring_bearer, an array: frodo, bilbo, samwise, gandalf, tom bombadil, gollum
#   -destined_for_Mount_Doom, a boolean
#   -utilized_power, an array: invisibility, will domination, invincibility, mind reading
# define 3 methods
#   -show_inscription
#   -seek_other_rings
#   -exert_power, receive an argument from attribute array, return power in puts statement
# end
class One_ring
attr_reader :inscription
attr_accessor :character_with_ring, :utilized_power, :destined_for_Mount_Doom, :name

  def initialize(new_ring, given_character, power, mount_doom)
    puts "Initializing the One Ring.."
    @name = new_ring
    @character_with_ring = given_character
    @destined_for_Mount_Doom = nil
    @utilized_power = power
    @inscription = "Ash nazg durbatuluk, ash nazg gimbatul,
      Ash nazg thrakatuluk agh burzum-ishi krimpatul."
  end

  def current_holder(given_character)
    ring_bearers = ["Frodo", "Bilbo", "Samwise", "Gandalf", "Tom Bombadil"    , "Gollum"]
    if ring_bearers.include?(given_character)
      puts "The ring is in #{given_character}'s posession"
    else
      puts "Who has the ring??"
    end
  end

  def show_inscription
    puts @inscription
  end

  def seek_other_rings
    puts "The One Ring is looking for other rings.."
  end

  def exert_power(power)
    utilized_power = ["invisibility", "will domination", "invincibility",     "mind reading"]
    if utilized_power.include?(power)
      puts "The ring is exerting its #{power} power."
    elsif power == "random"
      power = utilized_power.sample
      puts "The ring is exerting its #{power} power."
    end
  end

  def destination(mount_doom)
    destined_for_Mount_Doom = mount_doom
    if mount_doom == "y"
      mount_doom = true
      puts "The ring is being taken to Mount Doom for destruction"
    elsif mount_doom == "n"
      mount_doom = false
      puts "The ring can be intercepted by Sauron for evil! It must be destroyed!"
    else
      puts "Try entering 'y' or 'n' next time."
    end

  end

end

new_ring = ""
ring_history = []
while new_ring != "quit"
  p "Welcome to the One Ring program. What name would you like to give your ring? To quit, type 'quit.'"
  new_ring = gets.chomp
  break if new_ring == "quit"
  p "Who is the current Ring Bearer?"
  given_character = gets.chomp
  p "What power is the ring currently exerting? Choose: 'invisibility,' 'will domination,' 'invincibility,' or 'mind reading' - or 'random.'"
  power = gets.chomp
  p "Are we taking the ring to Mount Doom for destruction? (y/n)"
    mount_doom = gets.chomp

  new_ring = One_ring.new(new_ring, given_character, power, mount_doom)
  new_ring.current_holder(given_character)
  new_ring.show_inscription
  new_ring.seek_other_rings
  new_ring.exert_power(power)
  new_ring.destination(mount_doom)
  ring_history << new_ring
end
p ring_history

# p our_ring = One_ring.new
# p our_ring.show_inscription
# p our_ring.seek_other_rings
# p our_ring.exert_power