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
		
end

doggy = Puppy.new
doggy.fetch("ball")
doggy.speak(3)
doggy.roll_over
doggy.dog_years(2)
doggy.sit