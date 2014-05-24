class AddIndexToGaleriaVideo < ActiveRecord::Migration
  def change
    add_column :galeria_videos, :imagen_id, :string
  end
end
