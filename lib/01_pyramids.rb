puts "Salut bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print ">"
number_of_floors = gets.to_i 
puts "Voici la pyramide :"
if number_of_floors < 26
number_of_floors.times do |i|
	blankspace = " " * (number_of_floors - (i + 1))
	number_hastag = "#" * (i + 1)
	puts "#{blankspace}#{number_hastag}"
	end
else puts "Désolé mais une pyramide ne peut avoir que 25 étages maximum."
end 