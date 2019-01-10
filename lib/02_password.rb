def signup 
    puts "Cher utilisateurs, choisis un mot de passe"
    @mdp=gets.chomp
end



def login
    puts "Cher utilisateur, redonne moi ton mot de passe pour vérification"
    @testmdp=gets.chomp

    until @mdp==@testmdp
        print "Tu t'es trompé. Redonne moi ton mot de passe"
        puts ">>" 
    @testmdp=gets.chomp
    end

    puts "Bravo te voici sur l'écran d'acceuil"

end


def perform 
signup
login
end

perform