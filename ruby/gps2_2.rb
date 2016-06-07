# GPS 2.2 with John and Brett
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create a variable = input string
  # set default quantity, quantity = 0
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

def create_list(groceries)
	grocery_hash = Hash.new
	grocery_array = groceries.split(" ")
	grocery_array.each do |item|
		grocery_hash[item] = 2
	end
	return grocery_hash # for printing the list
end
puts "intial grocery list"
my_list = create_list("carrots apples cereals pizzas")
p my_list
puts " " # creating a blank space 

# Method to add an item to a list
# input: item name and optional quantity
# steps: add item name as key, then add quantity value to key in hash
# output: list (returned hash) with added item plus quantity

def add_to_list(hash_name, item, quantity)
	hash_name[item] = quantity
	return hash_name
end
puts "grocery list with additions"
p my_list = add_to_list(my_list, "oranges", 5) # creating updated hash with item
puts " " # creating a blank space 

# Method to remove an item from the list
# input: item to be removed plus the hash name 
# steps: remove item from list
# output: updated list with item removed.

def remove_item(hash_name, item)
	hash_name.delete(item)
	return hash_name
end
puts "grocery list with removal"
p my_list = remove_item(my_list, "apples") # removing from list
puts " " # creating a blank space 

# Method to update the quantity of an item
# input: hash name, input name, and new quantity
# steps: update item with new quantity and print updated list
# output: updated list with new item quantity 

def update_qty(hash_name, item, quantity)
	hash_name[item] = quantity
	return hash_name
end

puts "grocery list with change to quantity"
p my_list = update_qty(my_list, "oranges", 20)
puts " " # creating a blank space 

# Method to print a list and make it look pretty
# input: hash name
# steps: iterate through the hash
# output: display hash in screen with readable text 

my_list.each {|key, value| puts "Buy #{value} #{key}"}