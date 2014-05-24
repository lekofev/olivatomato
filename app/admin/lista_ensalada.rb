ActiveAdmin.register ListaEnsalada do
	belongs_to :ensalada
	config.filters = false

	index do        
		column :id                          
		column "Titulo", :titulo
		column "Descripcion", :descripcion
		column "Imagen Grande", :img_grande
		column "Imagen Miniatura", :img_chica
		column "Precio", :precio
		column "Orden", :orden
		column "Visible", :visible
		default_actions                   
	end 

	form do |f|                         
		f.inputs "Formulario Lista de ensaladas" do      
		  f.input :titulo, :label => "Titulo"
		  f.input :descripcion, :label => "Descripcion"
		  f.input :img_grande, :label => "Imagen Grande"
		  f.input :img_chica, :label => "Imagen Miniatura"
		  f.input :precio
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
        row :img_chica do
          image_tag(ad.img_chica.url)
        end
        row :precio
        row :orden
        row :visible
      end
    end


end
