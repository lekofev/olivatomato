ActiveAdmin.register Seccion do
	config.filters = false
    menu :priority => 1, :label => "Inicio"

    sidebar "Banner Rotativo",:only => :show do 
      ul do
        li link_to("Lista de banners", admin_seccion_banner_inicios_path(seccion))
      end
    end

	index do  
		column :id                            
		column "Titulo", :titulo                 
		column "Parrafo", :parrafo             
		default_actions                   
	end  

	form do |f|                         
		f.inputs "Formulario Inicio" do      
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
