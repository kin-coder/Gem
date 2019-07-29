require 'pry'
require_relative 'controller'
require 'bundler'
Bundler.require

class Router

	def initialize

		@controller= Controller.new
	end

	def perform

		while true

			puts "Tu veux faire quoi jeune mouss' ?"
			puts "1. Je veux créer un gossip"
			puts "2. Afficher les messages"
			puts "4. Je veux quitter l'app"

			params = gets.chomp.to_i

			case params #en fonction du choix
      		
      		when 1
        		puts "Tu as choisi de créer un gossip" 
        		puts
       			 @controller.create_gossip

			when 4
        		puts "À bientôt !"
        		puts
       			 break #Ce "break" permet de sortir de la boucle while. C'est même la seule façon d'en sortir.

       		when 2

       			puts "Vous voullez voir les messages:"
       			puts
       				Gossip.all

     		else
       			puts "Ce choix n'existe pas, merci de ressayer" #Si l'utilisateur saisit une entrée non prévue, il retourne au début du "while true". 
        		#C'est pour ça que la boucle est infinie: potentiellement, il peut se gourer jusqu'à la fin des temps :)

      		end

		end

	
	end



end
binding.pry