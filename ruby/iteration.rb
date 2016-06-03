def place_names
	name1 = "Chicago"
	name2 = "Bangkok"
	name3 = "Austin"
	puts "Where have you lived in your life"
	yield(name1, name2, name3)
end

place_names { |name1, name2, name3| puts "I have lived in all the following places: #{name1}, #{name2}, #{name3}."}




sports_team = ["Cowboys", "Texans", "Bears", "Patriots"]

defined_team = { :Dallas => "Cowboys", :Houston => "Texans", :Chicago => "Bears", :NE => "Patriots" }

sports_team.each do |team|
	puts "#{team} are great!" 
end



sports_team.map! do |team|
	"Go Redskins!"
end



defined_team.each do |city, team|
	puts "#{city} is home to the #{team}!!!!"
end

number_value = [1, 155, 200, 300, 23]

letter_value = {:a => 1, :b => 100, :c => 200, :d => 300, :e => 23}

number_value.delete_if { |number| number < 100 }
p number_value

letter_value.delete_if {|letter, number| number <= 100 }
p letter_value

p number_value
number_value.select! { |number|  number.even?  } 
p number_value

letter_value.select! {|number, value| value.even? }
p letter_value

number_value.keep_if { |number| number.even? }
p number_value

letter_value.keep_if {|letter, number| number.even? }
p letter_value

p number_value
number_value.drop_while {|number| number < 200 }

letter_value.drop_while {|letter, value| value < 100 }