ActiveAdmin.register Historia do

	config.filters = false
    menu :priority => 4, :label => "Historia"

	index do    
		column "Imagen", :imagen
		column "Orden", :orden
		column "Visible", :visible
		default_actions                   
	end 

	form do |f|                         
		f.inputs "Formulario galeria Historia" do   
		  f.input :imagen
		  f.input :orden
		  f.input :visible
		end                               
		f.actions
	end

    show do |ad|
      attributes_table do
        row :imagen do
          image_tag(ad.imagen.url)
        end
        row :orden
        row :visible
      end
    end
end
