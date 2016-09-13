
puts "Hamster's Name: "
name = gets.chomp
name.capitalize!

puts "Hamster's Volume: 1-10"
volume = gets.chomp
volume = volume.to_i

puts "Fur Color: "
color = gets.chomp
color.capitalize!

puts "Good Candidate for Adoption? Yes or No"
adoption = gets.chomp
if adoption == "Yes"
    adoption = true
else 
    adoption = false
end

age=nil

puts "Estimated Age: "
age = gets.chomp
if age != nil
    age = age.to_f 
end


puts "Name: #{name}"
puts "Volume: #{volume}"
puts "Color: #{color}"
puts "Adoptable? #{adoption}"
puts "Estimated Age: #{age}"