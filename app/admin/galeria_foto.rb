ActiveAdmin.register GaleriaFoto do
	config.filters = false
	belongs_to :imagen
   # menu :priority => 1, :label => "Inicio"



	index do                      
		column :id           
		column "Titulo", :titulo
		column "Descripcion", :descripcion
		column "Imagen Grande", :img_grande
		column "Miniatura", :miniatura
		column "Orden", :orden
		column "Visible", :visible
		default_actions                   
	end
	form do |f|                         
		f.inputs "Formulario Galeria de fotos" do      
		  f.input :titulo
		  f.input :descripcion
		  f.input :img_grande, :label=>"Imagen Grande"
		  f.input :miniatura
		  f.input :orden
		  f.input :visible
		end                               
		f.actions
	end

    show do |ad|
      attributes_table do
        row :titulo 
        row :descripcion
        row :img_grande do
          image_tag(ad.img_grande.url)
        end
        row :miniatura do
          image_tag(ad.miniatura.url)
        end
        row :orden
        row :visible
      end
    end


end
