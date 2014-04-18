class GaleriapopupController < ApplicationController
	# layout "home"
	layout false

	def index
		#Site info 
		# @siteinfo = SiteInfo.find(1)

		@galeria_foto=GaleriaFoto.find(params[:id])

	end
end
