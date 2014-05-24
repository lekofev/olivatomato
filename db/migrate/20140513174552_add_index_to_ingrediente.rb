class AddIndexToIngrediente < ActiveRecord::Migration
  def change
    add_column :ingredientes, :cat_ingrediente_id, :string
  end
end
