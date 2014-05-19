class PedidoController < ApplicationController

	layout "pedido"

	def formulario_compra
		@siteinfo = SiteInfo.find(1)
		if params[:id]
			@pedido=ListaEnsalada.find(params[:id])
		else
			@parametros = params
		end
		
	end

	def asesoramiento
		@siteinfo = SiteInfo.find(1)

		@alergias = Enfermedad.where(visible:true).where(tipo:'alergia').order("orden ASC")
		@enfermedades = Enfermedad.where(visible:true).where(tipo:'enfermedad').order("orden ASC")
		
	end

	def ensalada
		@siteinfo = SiteInfo.find(1)
		@categoriaIngredientes = CatIngrediente.where(visible:true).order("orden ASC")
		@ingredientes = Ingrediente.where(visible:true).order("orden ASC")

		# @fff = params;
		# params.each

		@match = false

		@parametros = Array.new()

		# request.POST.each do |key,value|
		#   logger.debug "Paramxx #{key}: #{value}"
		# end
		params.each do |key,value|
			@parametros.push("#{key}")
			# logger.debug "Paramxx #{key}: #{value}"
			# logger.debug "New post aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
		end
		logger.debug @parametros
		# respond_to do |format|
		#   format.jsonr do
		#     render :json => { 
		#       :ok => false
		#     }.to_json
		#   end        
		# end
	end

end
