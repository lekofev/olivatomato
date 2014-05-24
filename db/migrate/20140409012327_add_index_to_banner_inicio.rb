class AddIndexToBannerInicio < ActiveRecord::Migration
  def change
    add_column :banner_inicios, :seccion_id, :string
  end
end
