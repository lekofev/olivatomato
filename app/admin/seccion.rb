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
		  f.input :parrafo, :label => "Titulo"
		end                               
		f.actions
	end


end
