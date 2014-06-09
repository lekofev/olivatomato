ActiveAdmin.register Cliente do


	config.filters = false
    menu :priority => 6, :label => "Clientes"


	index do           
		column :id                 
		column :nombre
		column :apellido
		column :telefono
		column :email
		column :direccion
		column :referencia
		column "Recibir Boletin OT", :text_1
		default_actions                   
	end 

	form do |f|                         
		f.inputs "Clientes" do      
		  f.input :nombre
		  f.input :apellido
		  f.input :telefono
		  f.input :email
		  f.input :direccion
		  f.input :referencia
		  f.input :text_1, :label=>"Recibir Boletin OT" 
		end                               
		f.actions
	end

    show do |ad|
      attributes_table do
        row :nombre
        row :apellido
        row :telefono
        row :email
        row :direccion
        row :referencia
        row :text_1
      end
    end

end
