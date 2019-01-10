#On récupère le prénom de notre cher internaute
def ask_first_name
	puts "Quel est ton prénom maraud ?"
	first_name = gets.chomp
	return  first_name
end

#Cette méthode affiche Bonjour + le nom de l'internaute
def say_hello (first_name)
	puts "Bonjour #{first_name}"
end

#On appelle notre méthode avec pour attribut le résultat de la première méthode
say_hello(ask_first_name)


