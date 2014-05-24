ActiveAdmin.register Pedido do
	# config.filters = false
    menu :priority => 7, :label => "Pedido"

	index do                          
		column :id       
		column "Ensalada Nombre", :ensalada_nombre
		column "Ensalada Precio ", :ensalada_precio       
		column "Nombre Cliente", :nombre
		column "Apellido", :apellido
		column "Telefono", :telefono
		column "Email", :email
		column "Direccion", :direccion
		column "Referencia", :referencia
		column "Mensaje", :mensaje
		column "Tipo de pago", :tipo_de_pago
		# column "Monto", :monto
		# column "Tipo de tarjeta", :tipo_tarjeta
		# column "Pago", :pago
		column "Estado", :estado
		default_actions                   
	end

	form do |f|                         
		f.inputs "Formulario Galeria de Videos" do    
			f.input :ensalada_nombre, :label=>"Ensalada Nombre"  
			f.input :ensalada_precio, :label=>"Ensalada Precio "  
			f.input :nombre, :label=>"Nombre Cliente"
			f.input :apellido, :label=>"Apellido"
			f.input :telefono, :label=>"Telefono"
			f.input :email, :label=>"Email"
			f.input :direccion, :label=>"Direccion"
			f.input :referencia, :label=>"Referencia"
			f.input :mensaje, :label=>"Mensaje"
			f.input :tipo_de_pago, :label=>"Tipo de pago"
			# f.input :monto, :label=>"Monto"
			# f.input :tipo_tarjeta, :label=>"Tipo de tarjeta"
			# f.input :pago, :label=>"Pago"
			f.input :estado, :label=>"Estado"
		end                               
		f.actions
	end

    show do |ad|
      attributes_table do
        row :ensalada_nombre 
        row :ensalada_precio 
        row :nombre 
        row :apellido 
        row :telefono 
        row :email 
        row :direccion 
        row :referencia 
        row :mensaje 
        row :tipo_de_pago 
        # row :monto 
        # row :tipo_tarjeta 
        # row :pago 
        row :estado 
      end
    end



end
