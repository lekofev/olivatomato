ActiveAdmin.register GaleriaVideo do
	config.filters = false
	belongs_to :imagen

	index do                          
		column :id                  
		column "Titulo", :titulo
		column "Descripcion", :descripcion
		column "Miniatura", :miniatura
		column "Url video", :url_video
		column "Orden", :orden
		column "Visible", :visible
		default_actions                   
	end

	form do |f|                         
		f.inputs "Formulario Galeria de Videos" do      
		  f.input :titulo
		  f.input :descripcion
		  f.input :url_video, :label=>"Enlace del video"
		  f.input :miniatura
		  f.input :orden
		  f.input :visible
		end                               
		f.actions
	end


end
