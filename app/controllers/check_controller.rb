class CheckController < ApplicationController



	def crear_pedido
		
		# @nombre = Pedido.new(params[:nombre])

		# @ensaladaid = params[:ensalada_id]
		# @nombre = params[:nombre]
		# @telefono = params[:telefono]


		nu = false

		nombre = params[:nombre]
		apellido = params[:apellido]
		email = params[:email]
		telefono = params[:telefono]
		direccion = params[:direccion]
		referencia = params[:referencia]
		mensaje = params[:mensaje]
		tipo_de_pago = params[:tipo_de_pago]
		monto = params[:monto]
		tarjeta = params[:tarjeta]
		ensalada_id = params[:ensalada_id]
		ensalada_nombre = params[:ensalada_nombre]
		ensalada_precio = params[:ensalada_precio]
		pago = "#{params[:tipo_moneda]} #{params[:monto]}"

		newCliente = Cliente.where(email:email)
		if newCliente.blank?
			logger.debug "Nuevo cliente"
			t = Cliente.new(
			:nombre=>nombre, 
			:apellido=>apellido, 
			:email=>email, 
			:telefono=>telefono, 
			:direccion=>direccion, 
			:referencia=>referencia
			)
			if t.save
				nu = true
			else
				nu = false
			end
		else
			logger.debug "Cliente ya registrado"
			nu = 'Cliente registrado'
		end


		p = Pedido.new(
			:nombre=>nombre, 
			:apellido=>apellido, 
			:email=>email, 
			:telefono=>telefono, 
			:direccion=>direccion, 
			:referencia=>referencia, 
			:mensaje=>mensaje, 
			:tipo_de_pago=>tipo_de_pago, 
			:monto=>monto, 
			:tipo_tarjeta=>tarjeta, 
			:pago=>pago,
			:ensalada_id=>ensalada_id,
			:ensalada_nombre=>ensalada_nombre, 
			:ensalada_precio=>ensalada_precio
			)

		if 	p.save
			# TestMailer.welcome_email().deliver
			PedidoMailer.nuevo_pedido_email(p).deliver
			AvisoMailer.aviso_email(p).deliver
			respond_to do |format|
			  format.jsonr do
			    render :json => { 
			    	:ok=>true,
			    	:new_user=> nu,
					:id => p.ensalada_id, 
					:nombre => p.nombre,
					:telefono => p.telefono
					# :h1=>
			    }.to_json
			  end        
			end
		else
			respond_to do |format|
			  format.jsonr do
			    render :json => { 
			      :ok => false
			    }.to_json
			  end        
			end
		end


	end


end
