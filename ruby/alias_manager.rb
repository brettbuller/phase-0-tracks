
# take a name as a string.
# make it an array and split the two names
# create a new string with the first name and the last name
# make them all lower case 
# change the vowels and the consonants to the next one. save as new string
# join the two together as new string
# print the new alias

puts "we need to change your name. What is your real name?"

real_name = gets.chomp


next_name = real_name.split (' ')
# next_name = real_name.split("").shuffle.join
new_fname = next_name[1]
# new first name is previous last name
new_fname2 = new_fname.downcase!
# new first name is lower case previous last name
new_lname = next_name[0]
# new last name is previous first name
new_lname2 = new_lname.downcase!
# new last name is previous first name
new_fname3 = new_fname2.split("").shuffle.join
# new first name is randomized
new_lname3 = new_lname2.split("").shuffle.join
#new last name is now randomized

new_fakename = new_fname3.capitalize + " " + new_lname3.capitalize
# new alias is randomized first and radomized last name that has been capitalized

puts " Your new alias if you choose to accept it is #{new_fakename}."
