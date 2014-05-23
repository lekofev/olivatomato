ActiveAdmin.register Ensalada do

	config.filters = false
    menu :priority => 2, :label => "Ensaladas"

    sidebar "Lista de ensaladas",:only => :show do 
      ul do
        li link_to("Ver lista de ensaladas", admin_ensalada_lista_ensaladas_path(ensalada))
      end
    end

	index do             
		column :id
		column "Titulo", :titulo                     
		column "Parrafo", :parrafo             
		default_actions                   
	end 

	form do |f|                         
		f.inputs "Formulario Ensalada" do      
		  f.input :titulo, :label => "Titulo"
		  f.input :parrafo, :label => "Parrafo"
		end                               
		f.actions
	end

    show do |ad|
      attributes_table do
        row :titulo
        row :parrafo
      end
    end
    
end
