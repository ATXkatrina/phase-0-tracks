
input = ''
while input != "quit"
    p "To continue with the name-generating process, press ENTER. To exit program, type 'quit.'"
      input = gets.chomp
      break if input == "quit"
    p "What is the name we will be processing?"
    name = gets.chomp

    def make_alias (name)
      # reverse order of first and last name
      name = name.split(' ').reverse
      # separate letters into array
      name = name.join.split('')
      # change each letter to next in alphabet
      name.map! {|letter| letter.next }
      # join letter together
      name = name.join('')
    end
    p "Great. your new name is #{make_alias(name)}."

end


