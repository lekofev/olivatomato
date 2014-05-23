ActiveAdmin.register BannerInicio do
	belongs_to :seccion
	config.filters = false

	index do     
		column :id                          
		column "Imagen", :img_url                     
		column "Enlace", :img_link                    
		column "Titulo", :img_titulo                    
		column :orden                   
		column :visible            
		default_actions                   
	end 

	form do |f|                         
		f.inputs "Formulario Banner Inicio" do      
		  f.input :img_url, :label => "Imagen"       
		  f.input :img_link, :label => "Enlace"                
		  f.input :img_titulo, :label =>  "Titulo"
		  f.input :orden   
		  f.input :visible
		end                               
		f.actions
	end


    show do |ad|
      attributes_table do
        row :img_url do
          image_tag(ad.img_url.url)
        end
        row :img_link
        row :img_titulo
        row :orden
        row :visible
      end
    end


end
