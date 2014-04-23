ActiveAdmin.register BannerInicio do
	belongs_to :seccion
	config.filters = false

	index do     
		column :id                          
		column "Imagen", :img_url                     
		column "Enlace", :img_link                    
		column :orden                   
		column :visible            
		default_actions                   
	end 

	form do |f|                         
		f.inputs "Formulario Banner Inicio" do      
		  f.input :img_url, :label => "Imagen"       
		  f.input :img_link, :label => "Enlace"      
		  f.input :orden   
		  f.input :visible
		end                               
		f.actions
	end
end
