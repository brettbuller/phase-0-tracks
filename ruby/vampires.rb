puts "How many employees will be processed?"
  number_employees = gets.chomp.to_i
until number_employees == 0

  puts "What is you name?"
  name = gets.chomp

  puts "how old are you?"
  age = gets.chomp.to_i

  puts "what year where you born?"
  year = gets.chomp.to_i

  puts "do you want garlic bread (y/n)"
  garlic = gets.chomp

  puts "Would you like to enroll in our company's health insurance? (y/n)"
  insurance = gets.chomp

  if garlic == "y"
    garlic = true
  else
    garlic = false
  end

  if insurance == "y"
    insurance = true
  else
    insurance = false
  end

  if age == (2016 - year)
    age = true
  else
    age = false
  end

  if name == "Drake Cula" || name == "Tu Fang"
    vampire = 'definitely'
  elsif age && (garlic || insurance)
    vampire = 'probably_n'
  elsif !age && !garlic && !insurance
    vampire = 'almost'
  elsif !age && (!garlic || !insurance) # Age == False AND (garlic or Insurrance) == False
    vampire = 'probably'
  end

  case vampire
    when 'probably_n'
      puts "Probably not a vampire."
    when 'probably'
      puts "Probably a vampire."
    when 'almost'
      puts "Almost certainly a vampire."
    when 'definitely'
      puts "Definitely a vampire."
    else
      puts "Results inconclusive"
  end

allergies = false

until allergies
  puts "Please list out your allergies one by one, if done, type done"
  answer = gets.chomp
  if answer == "done"
    puts "thank you"
    allergies = true
  elsif answer == "sunshine"
    puts "Probably a vampire"
    allergies = true
  end
end 

  p name
  p age
  p year
  p garlic
  p insurance 

number_employees -=1
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

