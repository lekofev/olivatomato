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
	def formulario_contacto
		@siteinfo = SiteInfo.find(1)
		
	end
	def formulario_reclamo
		@siteinfo = SiteInfo.find(1)
		
	end
	def confirmacion
		@siteinfo = SiteInfo.find(1)

		nombre = params[:nombre]
		apellido = params[:apellido]
		email = params[:email]
		telefono = params[:telefono]
		mensaje = params[:mensaje]
		tipo_mensaje = params[:tipo_mensaje]
		pendiente = "pendiente"

		if tipo_mensaje == "formulario_contacto"
			c = Contacto.new(
				:nombre=>nombre, 
				:apellido=>apellido, 
				:email=>email, 
				:telefono=>telefono,  
				:mensaje=>mensaje
				)

			if 	c.save
				ContactoMailer.nuevo_contacto_email(c).deliver
				AlertaContactoMailer.alerta_contacto_email(c).deliver
				@nom = "Gracias "+nombre
				@msj = "Tu cometario ha sido enviado."
			else
				@nom = "Oh no contacto"
				@msj = "Hubo un error al hacer el envio, por favor vuelve a intentarlo."
			end
		elsif tipo_mensaje == "libro_reclamaciones"
			l = Libro.new(
				:nombre=>nombre, 
				:apellido=>apellido, 
				:email=>email, 
				:telefono=>telefono,  
				:mensaje=>mensaje,  
				:text_1=>pendiente
				)

			if 	l.save
				LibroMailer.nuevo_libro_email(l).deliver
				AlertaLibroMailer.alerta_libro_email(l).deliver
				@nom = "Gracias "+nombre
				@msj = "Tu reclamo a sido registrado, en breve nos comunicaremos contigo."
			else
				@nom = "Oh no Libro"
				@msj = "Hubo un error al hacer el envio, vuelve a intentarlo."

			end
		end

	end
	def asesoramiento
		@siteinfo = SiteInfo.find(1)

		@alergias = Enfermedad.where(visible:true).where(tipo:'alergia').order("orden ASC")
		@enfermedades = Enfermedad.where(visible:true).where(tipo:'enfermedad').order("orden ASC")
		@afeccion = Enfermedad.where(visible:true).where(tipo:'afeccion').order("orden ASC")
		
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
			@peso = params[:imc_peso].to_f
			t = params[:imc_talla].to_f*params[:imc_talla].to_f
			r = @peso/t
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
