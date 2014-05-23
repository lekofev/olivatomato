ActiveAdmin.register Ingrediente do
	belongs_to :cat_ingrediente

	index do                          
		column :id                  
		column "Nombre de Ingrediente", :nombre
		column "Nombre de Ingrediente para pc( _ )", :text_2
		column "Peso", :peso
		column "Descripcion", :descripcion
		column "Grasas", :grasas
		column "Proteinas", :protehinas
		column "Carbohidratos", :carbohidratos
		column "Afecta enfermedades( separados por coma)", :text_1
		column "Orden", :orden
		column "Visible", :visible
		default_actions                   
	end

	form do |f|                         
		f.inputs "Formulario Galeria de Videos" do    
			f.input :nombre, :label=>"Nombre de Ingrediente"
			f.input :text_2, :label=>"Nombre de Ingrediente para pc( _ )"
			f.input :peso, :label=>"Peso"
			f.input :descripcion, :label=>"Descripcion"
			f.input :grasas, :label=>"Grasas"
			f.input :protehinas, :label=>"Proteinas"
			f.input :carbohidratos, :label=>"Carbohidratos"
			f.input :text_1, :label=>"Afecta enfermedades( separados por coma)"
			f.input :orden, :label=>"Orden"
			f.input :visible, :label=>"Visible"
		end                               
		f.actions
	end

    show do |ad|
      attributes_table do
        row :nombre 
        row :text_2 
        row :peso 
        row :descripcion 
        row :grasas 
        row :protehinas 
        row :carbohidratos 
        row :text_1 
        row :orden 
        row :visible 
      end
    end
end
