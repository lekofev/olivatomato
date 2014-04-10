class LandingsController < ApplicationController
	layout "page"
		
	def index
		# render "landings/index" 
		@siteinfo = SiteInfo.find(1)

		@inicio= Seccion.find(1)


		# @banners = BannerInicio.all(order:"orden ASC", )
		@banners = BannerInicio.where(visible:true).order("orden ASC")

		@cc = "Hola mundo"
	end
end
