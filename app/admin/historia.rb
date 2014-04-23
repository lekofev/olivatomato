ActiveAdmin.register Historia do

	config.filters = false
    menu :priority => 4, :label => "Historia"

	index do         
		column :id                    
		column "Titulo", :titulo
		column "Descripcion", :descripcion
		column "Imagen", :imagen
		column "Orden", :orden
		column "Visible", :visible
		default_actions                   
	end 

	form do |f|                         
		f.inputs "Formulario galeria Historia" do      
		  f.input :titulo
		  f.input :descripcion
		  f.input :imagen
		  f.input :orden
		  f.input :visible
		end                               
		f.actions
	end

end
