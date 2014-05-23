ActiveAdmin.register Nutricion do

	config.filters = false
    menu :priority => 3, :label => "Nutricion"

	index do       
		column :id                         
		column "Titulo", :titulo
		column "Descripcion", :parrafo
		column "Nombre de producto", :nombre_producto
		default_actions                   
	end 

	form do |f|                         
		f.inputs "Formulario Nutricion" do      
		  f.input :titulo
		  f.input :parrafo
		  f.input :nombre_producto, :label => "Nombre de producto"
		  f.input :img_producto, :label => "Imagen producto"
		  f.input :mineral_1, :label => "Mieneral 1 (Separar con coma el procentaje)"
		  f.input :mineral_2, :label => "Mieneral 2 (Separar con coma el procentaje)"
		  f.input :mineral_3, :label => "Mieneral 3 (Separar con coma el procentaje)"
		  f.input :mineral_4, :label => "Mieneral 4 (Separar con coma el procentaje)"
		  f.input :mineral_5, :label => "Mieneral 5 (Separar con coma el procentaje)"
		  f.input :sabias_que, :label => "Sabias que (Separar con puntos)"
		  f.input :fuente, :label => "Sabias que (Separar con comas)"
		end                               
		f.actions
	end

    show do |ad|
      attributes_table do
        row :titulo
        row :parrafo
        row :nombre_producto
        row :img_producto do
          image_tag(ad.img_producto.url)
        end
        row :mineral_1
        row :mineral_2
        row :mineral_3
        row :mineral_4
        row :mineral_5
        row :sabias_que
        row :fuente
      end
    end

end
