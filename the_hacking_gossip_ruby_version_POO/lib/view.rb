
require 'pry'
require 'bundler'
Bundler.require



class View

	def create_gossip

		puts "Votre nom s'il vous plait:"
		author = gets.chomp
  		puts "Votre message:"

  		content = gets.chomp

  		
  		params = {author:author,content:content}
  		return params

  	end

  	def index_gossips

		
		
	end



end

