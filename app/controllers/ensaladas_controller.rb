class EnsaladasController < ApplicationController

	layout false
	# layout "home"

	def popup
		#Site info 
		@siteinfo = SiteInfo.find(1)
		# @listaEnsaladas = ListaEnsalada.where(visible:true).order("orden ASC")
		@ensalada_popup=ListaEnsalada.find(params[:id])
		# if @ensalada_popup.mineral_1?
			# @mineral_1 = @ensalada_popup.mineral_1.split(',')
		# end
		@mineral_1 = @ensalada_popup.mineral_1.split(',')
		@mineral_2 = @ensalada_popup.mineral_2.split(',')
		@mineral_3 = @ensalada_popup.mineral_3.split(',')
		@mineral_4 = @ensalada_popup.mineral_4.split(',')
		

	end

	def minerales

	end

end
