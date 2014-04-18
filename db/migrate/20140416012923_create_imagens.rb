class CreateImagens < ActiveRecord::Migration
  def change
    create_table :imagens do |t|     	
      t.string "foto_titulo"
      t.text "foto_descripcion"
      t.string "video_titulo"
      t.text "video_descripcion"
      t.text "txt_adicional_1"
      t.text "txt_adicional_2"
      t.integer "orden", :default => 0
      t.boolean "visible", :default => true
      t.timestamps
    end
  end
end