class Santa
	# location, age, and ethnicity are readable as a getter method
	attr_reader :location, :age, :ethnicity 
	#name and gender are both readable and writable
	attr_accessor :name, :gender 
	
	def initialize(gender, ethnicity)
		@age = rand(140)
		@name = name
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		puts "Initializing Santa instance #{@name}"
	end
	
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end
	
	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end
	
	def about
		puts "Name: #{@name}"
		puts "Gender: #{@gender}"
		puts "Ethnicity: #{@ethnicity}"
	end
	#setter method for celebrate_birthday
	def celebrate_birthday
		@age = age + 1
	end
	#setter method for get_mad_at
	def get_mad_at(bad_reindeer)
		@reindeer_ranking = @reindeer_ranking.delete_if {|reindeer| reindeer == bad_reindeer}
		@reindeer_ranking = @reindeer_ranking.insert(-1, bad_reindeer)
	end
			
end


# st = Santa.new("Gary", "male", "white")
# puts "#{st.name} is #{st.age} years old and #{st.gender}"
# st.gender = "N/A"
# puts "#{st.name} is now identifying as #{st.gender}"
# puts "Happy Birthday!! #{st.name} is now #{st.celebrate_birthday}!"
# st.get_mad_at("Vixen")

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
50.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end
p santas