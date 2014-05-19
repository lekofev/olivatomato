ActiveAdmin.register Ingrediente do
	belongs_to :cat_ingrediente

	config.filters = false
    # menu :priority => 5, :label => "Galeria"


	# index do           
	# 	column :id                 
	# 	column "Foto Titulo", :foto_titulo
	# 	column "Foto Descripcion", :foto_descripcion
	# 	column "Video Titulo", :video_titulo
	# 	column "Video Descripcion", :video_descripcion
	# 	default_actions                   
	# end 

	# form do |f|                         
	# 	f.inputs "Formulario Galeria de fotos" do      
	# 	  f.input :foto_titulo
	# 	  f.input :foto_descripcion
	# 	  f.input :video_titulo
	# 	  f.input :video_descripcion
	# 	end                               
	# 	f.actions
	# end
end
