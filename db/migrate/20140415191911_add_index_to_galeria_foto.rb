class AddIndexToGaleriaFoto < ActiveRecord::Migration
  def change
    add_column :galeria_fotos, :imagen_id, :string
  end
end
