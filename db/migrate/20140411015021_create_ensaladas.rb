class CreateEnsaladas < ActiveRecord::Migration
  def change
    create_table :ensaladas do |t|
    	t.string "titulo"
    	t.text "parrafo"
    	t.text "txt_adicional_1"
    	t.text "txt_adicional_2"
    	t.boolean "visible", :default => true
      t.timestamps
    end
  end
end
