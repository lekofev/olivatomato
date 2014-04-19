ActiveAdmin.register Imagen do

    sidebar "Banner Rotativo",:only => :show do 
      ul do
        li link_to("Galeria de imagenes", admin_imagen_galeria_fotos_path(imagen))
        li link_to("Galeria de videos", admin_imagen_galeria_videos_path(imagen))
      end
    end

end
