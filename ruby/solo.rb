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

# hound = Dachshund.new("Chase", "12", "red")
# hound.speak
# hound.fetch("ball")
# hound.chase_squirrel

hound = []
dog_kennel = []

# creating the loop 
puts "How many dachshunds are we rescuing today?"
checknum = Integer(gets)
currentnum = 0


until checknum == currentnum
	puts "You have a new Dachshund. What is its name?"
		d_name = gets.chomp
		hound << d_name
	puts "How many inches long is it?"
		d_inches = gets.chomp.to_i
		hound << d_inches
	puts "What color is your long dog?"
		d_color = gets.chomp
		hound << d_color
	checknum -=1
end

# prints out each dachshund instance
hound.each {|value| puts "#{value}"}