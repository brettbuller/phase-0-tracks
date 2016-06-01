# puts out the following questions: What is your name, age, number of children, decor theme,
# married, last school grade, last school attended, graduated (true or false)

# change strings to symbols with .intern  
# puts hash back 
# ask for need to update any information
# allow changes, if none "none" will end. if enters a title then the program should ask for new 
# value. make sure to change in to symbol.
# puts out last version of hash. 



puts "Thank you for applying to be an Interior Designer with ABC widgets. 
	We have an extensive interview process, so please fill out to the best of your abilities."

puts "What is your name?"
name = gets.chomp

puts "What is your age?"
age = gets.chomp.to_i

puts "We are very family oriented here. How many children do you have?"
number_of_children = gets.chomp.to_i

puts "What is your decor theme?"
decor_theme = gets.chomp

puts "Are you married or single?"
m_status = gets.chomp

puts "What was your last school grade?"
last_grade = gets.chomp.to_i

puts "What was the name of your last school attended?"
last_school = gets.chomp

puts "Did you graduate? (y/n)"
graduate = gets.chomp

if graduate == "y"
	graduate = true
end

interior_designer_job = {:name => name, :age => age, :number_of_children => number_of_children, 
	:decor_theme => decor_theme, :m_status => m_status, :last_grade => last_grade, 
	:last_school => last_school, :graduate => graduate }


p interior_designer_job
props = {}
puts "Please review the answers above.  If you need to revise one of the answers, please enter in the title.(ex: :title => answer). If everything is correct, please enter 'none'."
first_key = gets.chomp
if first_key == "none"
	interior_designer_job	
else
	puts "And your new answer?"
	props[first_key.to_sym] = gets.chomp
	interior_designer_job.merge!(props)
end




