class CreateHistoria < ActiveRecord::Migration
  def change
    create_table :historia do |t|
      t.string "titulo"
      t.text "descripcion"
      t.string "imagen"
      t.text "txt_adicional_1"
      t.text "txt_adicional_2"
      t.integer "orden", :default => 0
      t.boolean "visible", :default => true

      t.timestamps
    end
  end
end
