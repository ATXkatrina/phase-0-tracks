# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # create blank data structure (hash)
  # break up string
  #iterate through array and push
  # set default quantity (set defaults to 1)
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?] output hash with items initialized

def create_list(string_list)
  new_list  = {}
  list_array = string_list.split(" ")
  list_array.each{|item| new_list[item] = 1 }
  return new_list
end


# Method to add an item to a list
# input: original hash,item name and optional quantity
# steps:  pass symbol and quantity to become key and value.
          #checked to make sure item existed
          #created new quantities or added to existing
# output:updated hash returned


def add_item(list, item, quantity)
  if list.include?(item)
    list[item] += quantity
  else
    list[item] = quantity
  end
  return list
end


# Method to remove an item from the list
# input:hash, item name to be removec
# steps: remove key from hash
# output: updated hash returned


def remove_item(list, item)
    if list.include?(item)
      list.delete(item)
    else
      puts "Item is not on list"
    end
    return list
end

# Method to update the quantity of an item
# input:orginal hash, item to be updated, quantity to update
# steps: update quantity by accessing value in hash
# output: updates hash returned

def update_quan(list, item, quantity)
    if list.include?(item)
      list[item] = quantity
    else
      puts "Oops! We don't have that item in our list."
    end
    return list
end



# Method to print a list and make it look pretty
# input:hash
# steps: iterate through hash
        #print every key with value in a way that is presentable
# output: nil


def print_list(list)
  puts "-------- Grocery List --------"
  list.each{|item, value|puts " #{item} : #{value}" }
end


new_list = create_list("peanuts eggs bread coffee")
add_item(new_list, "lemonade", 2)
add_item(new_list, "tomatoes", 3)
add_item(new_list, "onions", 1)
add_item(new_list, "ice cream", 4)
remove_item(new_list, "lemonade")
update_quan(new_list, "ice cream", 1)

print_list(new_list)




# #test calls
# grocery_list = create_list("carrots apples cereal pizza")
# print_list(grocery_list)
# add_item(grocery_list, "carrots", 5)
# add_item(grocery_list, "bananas", 5)
# remove_item(grocery_list, "pizza")
# remove_item(grocery_list, "peas")
# update_quan(grocery_list, "bananas", 8)
# update_quan(grocery_list, "oranges", 2)
# print_list(grocery_list)



#Reflections
# pseudocode was a helpful piece that made actaul coding a little easier since there was a reference on hand
#hashes looked to be easier for assignment due to its ability to store strings as keys with asssociated values. Arrays would have been more difficult since they require number indexes which you would have to memorize/ keep track of
# methods return the value of last statement of the method
# you can pass any type of data that will be returned once a method is called
# make sure methods return what you intend and you can use them as arguments for other method calls
# ways to add and remove items from a hash were solidified. use of block code and iteration is still a little bit confusing.


