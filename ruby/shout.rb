#module Shout
#	def self.yell_angrily(words)
#   		words + "!!!" + " :("
# 	end
#	def self.yell_happily(words)
#   		words + "!!!" + " :))"
# 	end

#end

#Shout.yell_happily("hello")

module Shout
	def yell_angrily(words)
		words + "not again Bobby"
	end
	def yell_encouringly(words)
		words + "I've always been proud of you"
	end	
end

class Dancing
	include Shout
end

class Spelling
	include Shout
end

gary = Dancing.new
gary.yell_angrily("Dammit")

bruce = Dancing.new
bruce.yell_encouringly("Amazing move. ")

kendra = Spelling.new
kendra.yell_encouringly("Zeitgeist? ")

samantha = Dancing.new
samantha.yell_angrily("Bumblebee")