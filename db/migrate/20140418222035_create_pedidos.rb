class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.string "nombre"
      t.string "telefono"
      t.string "ensalada_id"
      t.string "ensalada_nombre"
      t.string "ensalada_precio"
      t.integer "orden", :default => 0
      t.boolean "visible", :default => true

      t.timestamps
    end
  end
end
