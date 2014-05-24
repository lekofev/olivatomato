class CreateIngredientes < ActiveRecord::Migration
  def change
    create_table :ingredientes do |t|
      t.string "nombre"
      t.string "peso"
      t.string "descripcion"
      t.string "calorias"
      t.string "grasas"
      t.string "protehinas"
      t.string "carbohidratos"
      t.string "text_1"
      t.string "text_2"
      t.integer "orden", :default => 0
      t.boolean "visible", :default => true
      t.timestamps
    end
  end
end
