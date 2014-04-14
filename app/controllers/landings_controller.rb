class LandingsController < ApplicationController
	
	layout "home"

	# layout :layout_selector

	# def layout_selector
	# 	if landings_controller?
	# 		"home"
	# 	else
	# 		"application"
	# end
		
	def index
		# render "landings/index" 

		#Site info 
		@siteinfo = SiteInfo.find(1)

		# Inicio
		@inicio= Seccion.find(1)
		# @banners = BannerInicio.all(order:"orden ASC", )
		@banners = BannerInicio.where(visible:true).order("orden ASC")

		# Ensaladas
		@ensalada= Ensalada.find(1)
		@listaEnsaladas = ListaEnsalada.where(visible:true).order("orden ASC")

		
		#nutricion
		@nutricion = Nutricion.find(1)
		@nutricion_1 = @nutricion.mineral_1.split(',')
		@nutricion_2 = @nutricion.mineral_2.split(',')
		@nutricion_3 = @nutricion.mineral_3.split(',')
		@nutricion_4 = @nutricion.mineral_4.split(',')
		@nutricion_5 = @nutricion.mineral_5.split(',')

		@sabias_que = @nutricion.sabias_que.split('.')

		@fuente = @nutricion.fuente.split(',')
		

		@cc = "Hola mundo"
	end


end
