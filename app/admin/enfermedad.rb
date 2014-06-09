ActiveAdmin.register Enfermedad do
	# config.filters = false
    menu :priority => 8, :label => "Enfermedades"

	index do                          
		column :id                  
		column "Nombre", :nombre
		# column "Nombre digital( _ )", :text_1
		column "Categoria", :tipo
		column "Descripcion", :descripcion
		column "Orden", :orden
		column "Visible", :visible
		default_actions                   
	end

	form do |f|                         
		f.inputs "Formulario Galeria de Videos" do    
			f.input :nombre, :label=>"Nombre"
			# f.input :text_1, :label=>"Nombre digital( _ )"
			f.input :tipo, :label=>"Categoria"
			f.input :descripcion, :label=>"Descripcion"
			f.input :orden, :label=>"Orden"
			f.input :visible, :label=>"Visible"
		end                               
		f.actions
	end

    show do |ad|
      attributes_table do
        row :nombre 
        row :text_1 
        row :tipo 
        row :descripcion 
        row :orden 
        row :visible 
      end
    end


end
