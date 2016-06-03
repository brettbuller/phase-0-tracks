puts "we need to change your name. What is your first name?"

real_name = gets.chomp

next_name = real_name.split (' ')
# => ["James", "Bond"]

new_fname = next_name[1]
# new string "Bond"

new_fname2 = new_fname.downcase!
#new_fname2
# new_fname2 = "bond"

new_lname = next_name[0]
# new string "James"
new_lname2 = new_lname.downcase!
# new_lname2 = "james"

new_fname3 = new_fname2.reverse
# => "dnob"

new_lname3 = new_lname2.reverse
# => "semaj"

new_lname3 =new_lname3


new_fakename = new_fname3.capitalize + " " + new_lname3.capitalize
# new_fakename = "First Last"

puts " Your new alias if you choose to accept it is #{new_fakename}."