#SIGNUP

def signup 
    puts "Cher utilisateurs, choisis un mot de passe"
    @mdp=gets.chomp
end

#LOGIN


def login
    puts "Cher utilisateur, redonne moi ton mot de passe pour vérification"
    @testmdp=gets.chomp

    until @mdp==@testmdp
        print "Tu t'es trompé."
        login
    end
      #  welcomescreen

end


#WELCOME SCREEN


def welcomescreen
        puts "Bravo te voici sur l'écran d'accueil"
end


#PERFORM combinant les 3 autres méthodes (BANGBANG)


def perform 
signup
login
welcomescreen
end

perform