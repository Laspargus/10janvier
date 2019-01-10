    
    #Cette méthode initailise la marche à 0 et le nombre de lancer de dés à 0
    def gamestart
        @stairs=0
        @number_dice=0
    end
    
    

    #Cette méthode simule un lancé de dés et incrémente le nombre de marche en fonction du résultat du lancé de dés
    def launch_dice ()
    
        #Le résultat du lancé de dés est stocké dans la variable @dice_result
        @dice_result=rand(1..6)
        puts "Le résultat de votre lancer de dé est #{@dice_result}"
        
        #la méthode case permet de modifier la valeur de stairs en fonction du résultat
        case @dice_result
        when 5 , 6 
            @stairs+=1
            puts "Bravo, tu avance d'una marche et tu es désormais à la marche #{@stairs}"        
        when 1
            @stairs-=1 
            puts "Dommage, tu recule d'une marche et tu es désormais à la marche #{@stairs}"
        else
            puts "Lancer sans conséquences, tu restes à la marche  #{@stairs}"
        end
    
        #J'incrémente le nombre de lancer de dés. Cela me permet de connaitre à la fin le nombre de lancer de dés d'une partie
        @number_dice+=1
        
    end
    
    
    #la méthode perform initialise le jeu puis répète l'action de lancé de dés jusqu'à atteindre la marche 10
    def perform 
        gamestart
            until @stairs==10
            launch_dice
            end
        
        puts "Bravo vous avez enfin atteint la 10ème marche avec succés !"
        puts "#{@number_dice} lancers de dés ont été necessaires pour atteindre ce magnifique objectif"
        
    end
    

    
    
    #la méthode average_finish_time prend comme attribut le nombre de test souhaités. 
    def average_finish_time (number_of_tests)
        @total_number_dice_launch=0
        
        number_of_tests.times do perform 
            @total_number_dice_launch+=@number_dice
        end
        
        @average_launch_per_game=@total_number_dice_launch/number_of_tests
        
        puts "Le nombre moyen de lancers nécessaires pour monter l'escalier sur #{number_of_tests} parties à été de  #{@average_launch_per_game}"
    end
    

    #On lance notre test sur 500 lancers. Mais on peut tester davantage d'itération. 
    average_finish_time (500)
    