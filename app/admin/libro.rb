ActiveAdmin.register Libro do

    menu :priority => 11, :label => "Libro"


	index do           
		column :id                 
		column :nombre
		column :apellido
		column :telefono
		column :email
		column :mensaje
		column "Id Reclamo", :text_2
		column "Estado", :text_1
		default_actions                   
	end 

	form do |f|                         
		f.inputs "Mensaje" do      
		  f.input :nombre
		  f.input :apellido
		  f.input :telefono
		  f.input :email
		  f.input :mensaje
		  f.input :text_2, :label=>"Id Reclamo"
		  f.input :text_1, :label=>"Estado"
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
        row :text_2
        row :text_1
      end
    end
end
