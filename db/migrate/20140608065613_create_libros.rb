class CreateLibros < ActiveRecord::Migration
  def change
    create_table :libros do |t|
      t.string "nombre"
      t.string "apellido"
      t.string "telefono"
      t.string "email"
      t.string "mensaje"
      t.string "text_1"
      t.string "text_2"
      t.string "text_3"
      t.string "text_4"
      t.string "text_5"
      t.integer "orden", :default => 0
      t.boolean "visible", :default => true

      t.timestamps
    end
  end
end
