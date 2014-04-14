ActiveAdmin.register Ensalada do

	config.filters = false
    # menu :priority => 1, :label => "Inicio"

    sidebar "Lista de ensaladas",:only => :show do 
      ul do
        li link_to("Ver lista de ensaladas", admin_ensalada_lista_ensaladas_path(ensalada))
      end
    end

end
