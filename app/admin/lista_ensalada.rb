ActiveAdmin.register ListaEnsalada do
	belongs_to :ensalada
	config.filters = false

	index do        
		column :id                          
		column "Titulo", :titulo
		column "Resumen", :txt_adicional_1
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
		  f.input :txt_adicional_1, :label => "Resumen"
		  f.input :descripcion, :label => "Descripcion"
		  f.input :img_grande, :label => "Imagen Grande"
		  f.input :img_chica, :label => "Imagen Miniatura"
		  f.input :mineral_1, :label => "Mineral 1(Separar por coma ' , ')"
		  f.input :mineral_2, :label => "Mineral 2(Separar por coma ' , ' )"
		  f.input :mineral_3, :label => "Mineral 3(Separar por coma ' , ' )"
		  f.input :mineral_4, :label => "Mineral 4(Separar por coma ' , ' )"
		  f.input :precio
		  f.input :orden
		  f.input :visible
		end                               
		f.actions
	end

    show do |ad|
      attributes_table do
        row :titulo
        row :txt_adicional_1
        row :descripcion
        row :img_grande do
          image_tag(ad.img_grande.url)
        end
        row :img_chica do
          image_tag(ad.img_chica.url)
        end
        row :mineral_1
        row :mineral_2
        row :mineral_3
        row :mineral_4
        row :precio
        row :orden
        row :visible
      end
    end


end
