class Puppy
	def fetch(toy)
		puts "I brought back the #{toy}"
		toy
	end
	#speak method
	def speak(int)
	int.times { |int| puts "Woof!" }
	end
	#roll over method
	def roll_over
		puts "*rolls over*"
	end
	#dog_years method. prints out our dog years
	def dog_years(years)
		new_years = years * 7
		puts new_years
	end
	#sit method, returns sitting
	def sit
		puts "Sitting, now give me a treat."
	end
	#intilialize method
	def initialize
		puts "Initializing new puppy instance..."
	end

end

doggy = Puppy.new
doggy.fetch("ball")
doggy.speak(3)
doggy.roll_over
doggy.dog_years(2)
doggy.sit

class Gymnast
	#intilialize method
	def initialize
		puts "The routine about to begin"
	end
	#cool moves 
	def routine
		puts "That was an amazing routine, lets see how the Russian Judge scores it."
	end
	#scoring from 3 judges and takes average. Returns integer of the average
	def scoring 
		score = rand(10)
		puts "And the score is #{score}."
	end
end
team = []

i = 0
while  i < 4
	participant =  "participant#{i}"
	team << participant
	i+=1
end	

team.each do |num| 
	num = Gymnast.new
	num.routine
	num.scoring
end








