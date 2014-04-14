class CreateNutricions < ActiveRecord::Migration
  def change
    create_table :nutricions do |t|
    	t.string "titulo"
    	t.text "parrafo"
    	t.string "nombre_producto"
    	t.string "img_producto"
    	t.string "mineral_1"
    	t.string "mineral_2"
    	t.string "mineral_3"
    	t.string "mineral_4"
    	t.string "mineral_5"
    	t.string "mineral_6"
    	t.string "mineral_7"
    	t.text "sabias_que"
    	t.text "fuente"
    	t.text "txt_adicional_1"
    	t.text "txt_adicional_2"
    	t.integer "orden", :default => 0
    	t.boolean "visible", :default => true

      t.timestamps
    end
  end
end
