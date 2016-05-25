puts "What is the hamster's name?"
name = gets.chomp

puts "What is the volume level of the hamster from 1 - 10 ?"
volume = gets.chomp.to_i

puts "What is the hamster's fur color?"
fur_color = gets.chomp

puts "Is the hamster a good candidate for adoption? (y/n)"
candidate = gets.chomp

puts "What is the estimated age of the hamster?"
age = gets.chomp
if age == ""
  age = nil
end

if candidate == "y"
	candidate = true
elsif  candidate == "n"
	candidate = false
end

if age != nil 
	age = age.to_i
end

puts "Hamster is named #{name}."
puts "#{name} has a volume level of #{volume} out of 10."
puts "#{name} has a fur color of #{fur_color}."
if candidate == true
	puts "#{name} is a good candidate for adoption."
elsif candidate == false 
	puts "#{name} needs work and love."
end 
puts "#{name} is #{age} years old."


