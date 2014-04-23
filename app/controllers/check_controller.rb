class CheckController < ApplicationController



	def crear_pedido
		
		# @nombre = Pedido.new(params[:nombre])

		# @ensaladaid = params[:ensalada_id]
		# @nombre = params[:nombre]
		# @telefono = params[:telefono]


		p = Pedido.new(:ensalada_id=>params[:ensalada_id], :nombre=>params[:nombre], :telefono=>params[:telefono])
		# @elpedido = Pedido.new
		# @elpedido.ensaladaid = params[:ensalada_id]
		# @elpedido.nombre = params[:nombre]
		# @elpedido.telefono = params[:telefono]

		# p = Pedido.new
		# p.ensalada_id = "2"
		# p.nombre = "ericksonn"
		# p.telefono = "9595959"
		# p.save
		if 	p.save
			# TestMailer.welcome_email().deliver
			respond_to do |format|
			  format.jsonr do
			    render :json => { 
			    	:ok=>true,
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
