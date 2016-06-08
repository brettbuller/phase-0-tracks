# new class design
# class for dachshund
# attributes = name, length(in inches), color 
# methods = speak, fetch(toy), chase squirrel 

class Dachshund
	# location, age, and ethnicity are readable as a getter method
	attr_reader :name, :length, :color 
	#name and gender are both readable and writable
	attr_accessor :name, :length, :gender

	def initialize(name, length, color)
		@name =  name
		@length = length
		@color = color
		puts "Dachshund #{@name} engage!"
	end

	def speak
		puts "Woof, Woof, Woof"
	end

	def fetch(toy)
		puts "Throw the #{toy}."
		puts "***runs***"
		puts "I brought back the #{toy}. It is now mine"
	end

	def chase_squirrel
		puts "Stop what you are doing, there is a squirrel that must be chased."
	end
end



	