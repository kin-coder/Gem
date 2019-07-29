
require 'pry'
require 'csv' # besoin pour creer csv
require 'bundler'
Bundler.require

class Gossip
	attr_reader :author, :content

	def initialize(author, content)
  		@content = content
  		@author = author
	end


	def save

		CSV.open("../db/gossip.csv","a+") do |csv| #creation fichier du base de données controleur
  		csv << [@author, @content]  # enregistrement des données
  		end
	end



	def self.all

		@gossip_provisoire = CSV.read("../db/gossip.csv")	
		puts @gossip_provisoire

	end

end



