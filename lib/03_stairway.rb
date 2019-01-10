def lancement_jeu
    @marche=0
    @nbr_lancer_des=0
    end
    
    
    def lancer_des ()
    
        @resultat=rand(1..6)
        puts "Le résultat de votre lancer de dé est #{@resultat}"
        
        case @resultat
        when 5 , 6 
            @marche+=1
            puts "Bravo, tu avance d'una marche et tu es désormais à la marche #{@marche}"        
        when 1
            @marche-=1 
            puts "Dommage, tu recule d'une marche et tu es désormais à la marche #{@marche}"
            
           
        else
            puts "Lancer sans conséquences, tu restes à la marche  #{@marche}"
        end
    
        @nbr_lancer_des+=1
        
    end
    
    
    
    def perform 
        lancement_jeu
            until @marche==10
            lancer_des
            end
        
        puts "Bravo vous avez enfin atteint la 10ème marche avec succés !"
        puts "#{@nbr_lancer_des} lancers de dés ont été necessaires pour atteindre ce magnifique objectif"
        
    end
    

    
    
    def average_finish_time (number_of_tests)
        @nbr_total_lance_des=0
        
        number_of_tests.times do perform 
            @nbr_total_lance_des+=@nbr_lancer_des
        end
        
        @nbr_moyen=@nbr_total_lance_des/number_of_tests
        
        puts "Le nombre moyen de lancers nécessaires pour monter l'escalier sur #{number_of_tests} parties à été de  #{@nbr_moyen}"
    end
    
    average_finish_time (500)
    