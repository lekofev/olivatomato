ActiveAdmin.register Seccion do
	config.filters = false
    # menu :priority => 1, :label => "Inicio"

    sidebar "Banner Rotativo",:only => :show do 
      ul do
        li link_to("Lista de banners", admin_seccion_banner_inicios_path(seccion))
        li link_to("Lista de banners", admin_seccion_galeria_fotos_path(seccion))
      end
    end

end
