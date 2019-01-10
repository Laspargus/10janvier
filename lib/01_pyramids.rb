
#MOITIE DE PYRAMIDE

def half_pyramid

puts "Salut bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print ">"

number_of_floors = gets.to_i 
# fonctionne également avec gets.chomp.to_i


puts "Voici la pyramide :"

if number_of_floors < 26
number_of_floors.times do |i|

	blankspace = " " * (number_of_floors - (i + 1))

	number_hastag = "#" * (i + 1)
	
	puts "#{blankspace}#{number_hastag}"
	
end

else puts "Désolé mais une pyramide ne peut avoir que 25 étages maximum."
	

end 

end

#half_pyramid 





#PYRAMIDE DE GIZEH


def full_pyramid

	puts "Salut bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print ">"

number_of_floors = gets.to_i 
# fonctionne également avec gets.chomp.to_i


puts "Voici la pyramide :"

if number_of_floors < 26
number_of_floors.times do |i|
	
	

	blankspace = " " * (number_of_floors - (i + 1))

	number_hastag = "#" * (i + 1)
	
	hastagsup = "#" * i
	
	puts "#{blankspace}#{number_hastag}#{hastagsup}"
	
end

else puts "Désolé mais une pyramide ne peut avoir que 25 étages maximum."
	

end 

end

#full_pyramid






#ALEXANDRIE ALEXANDRA


def wtf_pyramid

		puts "Salut bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	print ">"



	number_of_floors = gets.to_i 
	# fonctionne également avec gets.chomp.to_i


#condition pour tester sir le nombre d'étage est pair
if number_of_floors.even? 
	puts "Ce jeu ne fonctionne pas avec les nombres pairs"

else

	half_floors = (number_of_floors/2)+1
	floor_under_half=half_floors -1

	#je teste ma variable half_floors
	puts half_floors

	#je teste ma variable floor_under_half
	puts floor_under_half

	puts "Voici la pyramide :"

		#Premiere moitié de pyramide
		half_floors.times do |i|
				blankspace = " " * (number_of_floors - (i + 1))

				number_hastag = "#" * (i + 1)
			
				hastagsup = "#" * i
			
				puts "#{blankspace}#{number_hastag}#{hastagsup}"
		end

		#Deuxième moitié de pyramide
		floor_under_half.times do |i|
		
				blankspace = " " * (half_floors + i)
		
				number_hastag = "#" * (number_of_floors-i-(2+i))
		
				puts "#{blankspace}#{number_hastag}"
		end


end
		

end

wtf_pyramid