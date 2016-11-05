#Here is my Array of HBO shows.

hbo_shows = ["Game Of Thrones", "Westworld", "Veep", "John Oliver"]

#Here is my Hash of AMC shows and their status.

amc_shows = {
	breaking_bad: 'unwatched',
	walking_dead: 'unwatched',
	better_call_saul: 'unwatched',
	preacher: 'unwatched'
}

#Here I am iterating through the array using .each

hbo_shows.each do |show|
	puts "I have watched the latest episode of #{show}"
end 

#Here I am using .map to modify items in the hash.
puts "Original hash:"
p hbo_shows

hbo_shows.map! do |show|
	show.upcase
end

puts "Modifed hash using .map:"
p hbo_shows





#Here I am iterating through the hash using .each
puts "Original hash:"
p amc_shows

amc_shows.each do |title, status|
	puts "The AMC show #{title} is currently #{status}"
end

p amc_shows

#Trying to modify ONLY the value, but can't seem to get it.

amc_shows_modified = {}
amc_shows_modified = amc_shows.map do |title, status|
	title = title
	status = "watched"
end

p amc_shows_modified



mj_plants = {
	'OG Kush' => 'veg',
	'Pineapple Express' => 'flower',
	'Blue Dream' => 'veg',
	'Sour Diesel' => 'flower'
	}

## Here I am defining an Array of letters. ##

numbers = [1, 2, 3, 4, 5]




# #A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).

mj_plants.delete_if {|plant_name, status| status == "flower"}
p mj_plants


## Array Version. ##

numbers.delete_if {|x| x >= 3}
p numbers




# A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).



## Hash Version. ##
mj_plants.keep_if {|plant_name, status| plant_name == 'OG Kush'}
p mj_plants


## Array Version. ##
numbers.keep_if {|x| x == 1}
p numbers




# A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!


## Hash Version. ##

mj_plants = {
	'OG Kush' => 'veg',
	'Pineapple Express' => 'flower',
	'Blue Dream' => 'veg',
	'Sour Diesel' => 'flower'
	}
	
p mj_plants.select {|plant_name, status | plant_name == "Blue Dream"}

## Array Version. ##
numbers = [1, 2, 3, 4, 5]
p numbers.select {|x| x ==2}



# A method that will remove items from a data structure until the condition in the block evaluates to false, then stops (you may not find a perfectly working option for the hash, and that's okay).


## Array Version. ##
numbers = [1, 2, 3, 4, 5]
numbers = numbers.drop_while {|x| x <= 3}

p numbers

## Hash Version. ##

mj_plants = {
	'OG Kush' => 'veg',
	'Pineapple Express' => 'flower',
	'Blue Dream' => 'veg',
	'Sour Diesel' => 'flower'
	}

p mj_plants	
	
mj_plants = mj_plants.drop_while {|plant_name, status| plant_name.length > 9}

p mj_plants

