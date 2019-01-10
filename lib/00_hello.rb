def ask_first_name
	puts "Quel est ton prénom maraud ?"
	@first_name = gets.chomp
	return @first_name
end

def say_hello (first_name)
	puts "Bonjour #{first_name}"
end


ask_first_name 
say_hello(@first_name)