class AddIndexToListaEnsalada < ActiveRecord::Migration
  def change
    add_column :lista_ensaladas, :ensalada_id, :string
  end
end
