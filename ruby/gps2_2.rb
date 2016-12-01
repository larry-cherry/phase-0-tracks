# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
 # [fill in any steps here]
 # set default quantity
 # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

def create_list(groceries)
 list = {}
 groceries.split(" ").each do |item|
   list[item] = 0
 end
 list
end

current_list = create_list("carrots apples cereal pizza")

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: pass in hash and set hash key to has value
# output: new hash

def add_item(list, item, quantity=0)
 list[item] = quantity
 list
end

current_list = add_item(current_list, "cheese")

# Method to remove an item from the list
# input: list and item to remove
# steps: call method to delete item from hash
# output: a new hash

def remove_item(list, item)
 list.delete(item)
 list
end

current_list = remove_item(current_list, "apples")


# Method to update the quantity of an item
# input: list, item, new quantity
# steps: use item to update hash with required quantity
# output: new hash

def update_quantity(list, item, quantity)
list[item] = quantity
list
end

#update_quantity(current_list, "carrots", 2)

# Method to print a list and make it look pretty
# input: Current Hash
# steps: Print Statement and then print list. Loop through the hash and print out each item and quantity
# output: A easy to read list of items

def list_output(current_list)
   puts "Your groceries list contains the following..."
   current_list.each do |item, quantity|
   puts "Item #{item}, Quantity #{quantity}"
   end
end

#list_output(current_list)

current_list = create_list('')
current_list = add_item(current_list, "Lemonade", 2)
add_item(current_list, "Tomatoes", 3)
add_item(current_list, "Onions", 1)
add_item(current_list, "Ice Cream", 4)
remove_item(current_list, "Lemonade")
update_quantity(current_list, "Ice Cream", 1)
list_output(current_list)


=begin
puts "What grocery item or items would you like to add to the list?"
grocery_item = gets.chomp
current_list = create_list(grocery_item)

loop do 
 puts "What grocery item or items would you like to add to the list?"
 grocery_item = gets.chomp
 break if grocery_item == "done"
 add_item(current_list, grocery_item)
end

p current_list


Release 4: Reflect

What did you learn about pseudocode from working on this challenge?
It is easy to skip ahead and dive straight into coding. It takes disclipine and patience to pseudocode especailly when you may know how to code what you want

What are the tradeoffs of using arrays and hashes for this challenge?
Arrays are great for list but do not give alot of depth. Hashes provide much more depth and control thanks to their keys but are not always suited for simple long list

What does a method return?
It returns the evaluated result of the last line

What kind of things can you pass into methods as arguments?
You can pass all kinds of things. You can pass methods into methods, arrays, hashes, integers, and strings. To be honest I do no know what you can not pass through them yet.

How can you pass information between methods?
By passing the results from a method into the new method.
What concepts were solidified in this challenge, and what concepts are still confusing?
=end