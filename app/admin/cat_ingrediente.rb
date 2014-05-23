ActiveAdmin.register CatIngrediente do

	config.filters = false
    menu :priority => 9, :label => "Categoria Ingrediente"

    sidebar "Lista de ingredientes",:only => :show do 
      ul do
        li link_to("Ingredientes", admin_cat_ingrediente_ingredientes_path(cat_ingrediente))
      end
    end


	index do                          
		column :id                  
		column "Nombre Categoria", :nombre
		column "Precio", :precio
		# column "Descripcion", :descripcion
		column "Orden", :orden
		column "Visible", :visible
		default_actions                   
	end

	form do |f|                         
		f.inputs "Formulario Galeria de Videos" do    
			f.input :nombre, :label=>"Nombre Categoria"
			f.input :precio, :label=>"Precio"
			# f.input :descripcion, :label=>"Descripcion"
			f.input :orden, :label=>"Orden"
			f.input :visible, :label=>"Visible"
		end                               
		f.actions
	end

    show do |ad|
      attributes_table do
        row :nombre 
        row :precio 
        # row :descripcion 
        row :orden 
        row :visible 
      end
    end
end
