class CreateGaleriaVideos < ActiveRecord::Migration
  def change
    create_table :galeria_videos do |t|
    	t.string "titulo"
    	t.string "descripcion"
    	t.string "url_video"
    	t.string "miniatura"
    	t.text "txt_adicional_1"
    	t.text "txt_adicional_2"
    	t.integer "orden", :default => 0
    	t.boolean "visible", :default => true

      t.timestamps
    end
  end
end
