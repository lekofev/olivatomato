ActiveAdmin.register Imagen do

	config.filters = false
    menu :priority => 5, :label => "Galeria"

    sidebar "Banner Rotativo",:only => :show do 
      ul do
        li link_to("Galeria de imagenes", admin_imagen_galeria_fotos_path(imagen))
        li link_to("Galeria de videos", admin_imagen_galeria_videos_path(imagen))
      end
    end


	index do           
		column :id                 
		column "Foto Titulo", :foto_titulo
		column "Foto Descripcion", :foto_descripcion
		column "Video Titulo", :video_titulo
		column "Video Descripcion", :video_descripcion
		default_actions                   
	end 

	form do |f|                         
		f.inputs "Formulario Galeria de fotos" do      
		  f.input :foto_titulo
		  f.input :foto_descripcion
		  f.input :video_titulo
		  f.input :video_descripcion
		end                               
		f.actions
	end

    show do |ad|
      attributes_table do
        row :foto_titulo 
        row :foto_descripcion
        row :video_titulo
        row :video_descripcion
      end
    end

end
