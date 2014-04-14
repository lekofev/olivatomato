class CreateListaEnsaladas < ActiveRecord::Migration
  def change
    create_table :lista_ensaladas do |t|
    	t.string "titulo"
    	t.text "descripcion"
    	t.text "txt_adicional_1"
    	t.text "txt_adicional_2"
    	t.string "img_grande"
    	t.string "img_chica"
    	t.string "precio"
    	t.string "mineral_1"
    	t.string "mineral_2"
    	t.string "mineral_3"
    	t.string "mineral_4"
    	t.string "mineral_5"
    	t.string "mineral_6"
    	t.string "mineral_7"
    	t.integer "orden", :default => 0
    	t.boolean "visible", :default => true
      t.timestamps
    end
  end
end
