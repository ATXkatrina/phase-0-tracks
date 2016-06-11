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
attr_reader :ring_bearer, :inscription
attr_accessor :utilized_power, :destined_for_Mount_Doom

  def initialize
    puts "Initializing the One Ring.."
    @ring_bearer = ["Frodo", "Bilbo", "Samwise", "Gandalf", "Gom bombadil", "Gollum"]
    @destined_for_Mount_Doom = true
    @utilized_power = ["invisibility", "will domination", "invincibility", "mind reading"]
    @inscription = "Ash nazg durbatulûk, ash nazg gimbatul,
Ash nazg thrakatulûk agh burzum-ishi krimpatul."
  end

  def current_holder(character)
    if ring_bearer.include?(character)
      puts "The ring is in #{character}'s posession"
    else "Who has the ring??"
    end
  end

  def show_inscription
    puts @inscription
  end

  def seek_other_rings
    puts "The One Ring is looking for other rings.."
  end

  def exert_power
    puts "The ring is exerting its #{@utilized_power.sample} power."
  end

end


p our_ring = One_ring.new
p our_ring.show_inscription
p our_ring.seek_other_rings
p our_ring.exert_power
p our_ring.current_holder("Frodo")