
puts "would you like to decrypt or encrypt a password?"
answer = gets.chomp

puts "what is the password?"
password = gets.chomp

def encrypt(input)
	n = 0
	while n < input.length
		if input[n] == "z"
			then input[n] = "a"
			n += 1
		else	
	input[n] = input[n].next
	n += 1
	end	
end
p input
end

def decrypt(input)
	n = 0
	str = "abcdefghijklmnopqrstuvwxyz"
	while n < input.length
		input[n] = str[str.index(input[n]) -1]
		n += 1
	end
	p input
end


if answer = "decrypt"
	decrypt(password)
else answer = "encrypt"
	encrypt(password)
end
# the p call returns the exact value which then gets input in the next def method as a string.  


