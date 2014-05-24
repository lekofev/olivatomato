class PedidoController < ApplicationController
	include ActionView::Helpers::NumberHelper

	layout "pedido"

	def formulario_compra
		@siteinfo = SiteInfo.find(1)
		if params[:id]
			@pedido=ListaEnsalada.find(params[:id])
			@parametros =""
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


		if params[:imc_peso]!="" && params[:imc_talla]!=""
		# if (defined? params[:imc_peso]) && (defined? params[:imc_talla])
			p = params[:imc_peso].to_f
			t = params[:imc_talla].to_f*params[:imc_talla].to_f
			r = p/t
			@imc = number_with_precision(r, :precision => 1)
		else
			@imc = false
		end



		# logger.debug @parametros
		# respond_to do |format|
		#   format.jsonr do
		#     render :json => { 
		#       :ok => false
		#     }.to_json
		#   end        
		# end
	end

end
