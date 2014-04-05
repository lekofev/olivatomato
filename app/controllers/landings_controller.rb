class LandingsController < ApplicationController
	layout "page"

	def index
		render "landings/index" 

		
	end
	@cc = "Hola mundo"
end
