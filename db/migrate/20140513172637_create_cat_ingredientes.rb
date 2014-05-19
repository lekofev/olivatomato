class CreateCatIngredientes < ActiveRecord::Migration
  def change
    create_table :cat_ingredientes do |t|
      t.string "nombre"
      t.string "precio"
      t.string "descripcion"
      t.string "text_1"
      t.string "text_2"
      t.integer "orden", :default => 0
      t.boolean "visible", :default => true
      t.timestamps
    end
  end
end
