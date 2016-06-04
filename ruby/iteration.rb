def test
  puts "This is a test"
  yield puts "This is a second message"
end

test {puts "This is a block message"}

breakfast_foods = ["tacos", "eggs", "pancakes"]
breakfast_drinks = { milk: "white", oj: "orange", coffee: "brown" }

breakfast_foods.each do |list|
  p list
end

breakfast_drinks.each do |other_list|
  p other_list
end

breakfast_foods.map! do |list_three|
  puts list_three
  list_three.upcase
end

p breakfast_foods


numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]

p numbers.delete_if{|num| num % 2 == 0}

p numbers.drop_while{|num| num < 4}

p numbers.select {|num| num >= 9}

p numbers.take_while{|num| num < 8}