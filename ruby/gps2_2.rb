


def make_list(string)
  list = {}
  string.split(' ').each { |item| list[item] = 0 }
  p list
end

def add_item(list, new_item, quantity = 0)
  list[new_item] = quantity
end

def remove_item(list, item_to_remove)
 list.delete(item_to_remove)
end

def update_quantity(list, item_to_update, new_quantity)
  list[item_to_update] = new_quantity
end

def print_hash(list)
  puts "You have #{list.length} items on your list"
  list.each { |item, quantity| puts "You have #{quantity} of #{item}" }
end

string = "carrots apples cereal pizza"

list = make_list(string)

p add_item(list, "juice")
p list

remove_item(list, "cereal")
p list

update_quantity(list, "cereal", 7)
p list

print_hash(list)



# REFLECTION
# What did you learn about pseudocode from working on this challenge?
#     It can help to think about your psudocode in terms of input and output.
#
#
#
# What are the tradeoffs of using arrays and hashes for this challenge?
#      I would imagine using all arrays would lead to more code
#      as using an array seemed more appropreate.
#
#
# What does a method return?
#     A method returns the output of
#     the executed code contained within.
#
#
# What kind of things can you pass into methods as arguments?
#     Strings, variables, integers, arrays and hashs.
#
#
#
#
# How can you pass information between methods?
#     By assigning thr methods result to a new vairable.
#
#
#
#
# What concepts were solidified in this challenge, and what concepts are still confusing?
#     I still have a bit of trouble refactoring once the code is working.  I feel
#     scared I'm going to break something so I'd rather leave it be.
#
#
#
#
#
