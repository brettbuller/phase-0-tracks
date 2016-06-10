class Dachshund
	# location, age, and ethnicity are readable as a getter method, haven't needed this as all are attr_accessor
	#name and gender are both readable and writable
	attr_accessor :name, :length, :color, :toy

	def initialize(name, length, color)
		@name =  name
		@length = length
		@color = color
		@toy = toy
	end

	def speak
		puts "Woof, Woof, Woof"
	end

	def fetch(toy)
		@toy = toy
		puts "Throw the #{toy}."
		puts "***runs***"
		puts "I brought back the #{toy}. It is now mine"
	end

	def chase_squirrel
		puts "Stop what you are doing, there is a squirrel that must be chased."
	end

	  def your_dog
    puts "Your dachshund #{@name} is #{@length} inches long and #{@color} in color and loves you and its #{@toy}!"
  	end
end

# hound = Dachshund.new("Chase", "12", "red")
# hound.speak
# hound.fetch("ball")
# hound.chase_squirrel


dog_kennel = []

# creating the loop 
loop do
	puts "You have a rescued a new Dachshund. What is its name?"
		name = gets.chomp

	puts "How many inches long is it?"
		length = gets.chomp.to_i

	puts "What color is your long dog?"
		color = gets.chomp

	puts "What is your dog's favorite toy?"
		toy = gets.chomp
	
	puts "Are you happy with your dachshund? If so type 'rescue'!"	
		input = gets.chomp
	if input == "rescue"
		hound = Dachshund.new(name, length, color)
		hound.speak
		hound.fetch(toy)
		hound.chase_squirrel
		dog_kennel << hound
	else 
		puts "just type 'rescue' your dachshund will love you all your life."
		input = gets.chomp
	end

	puts "Hit enter to adopt another dachshund (please). If you're good with your number of dachshunds, please type 'done."
  finish = gets.chomp
  #exit infinite loop
  break if finish == 'done'
end

# print the dog results
dog_kennel.each do |hound|
	hound.your_dog
end





