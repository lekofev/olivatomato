ActiveAdmin.register Contacto do

    menu :priority => 10, :label => "Mensajes"


	index do           
		column :id                 
		column :nombre
		column :apellido
		column :telefono
		column :email
		column :mensaje
		default_actions                   
	end 

	form do |f|                         
		f.inputs "Mensaje" do      
		  f.input :nombre
		  f.input :apellido
		  f.input :telefono
		  f.input :email
		  f.input :mensaje
		end                               
		f.actions
	end

    show do |ad|
      attributes_table do
        row :nombre
        row :apellido
        row :telefono
        row :email
        row :mensaje
      end
    end
end
