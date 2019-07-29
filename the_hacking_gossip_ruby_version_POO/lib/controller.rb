
require_relative 'gossip'
require_relative 'view'
require 'bundler'
Bundler.require


class Controller

def initialize

	@view = View.new
	#params = @view.create_gossip  creation au debut
end


	def create_gossip

		params = @view.create_gossip
		#@gossip = Gossip.new
		@gossip = Gossip.new(params[:author],params[:content]) #pour le moment, le contenu de ce gossip est inscrit "en dur" dans le code. L'utilisateur ne peut pas le changer.
		@gossip.save
	
	end

	




end
