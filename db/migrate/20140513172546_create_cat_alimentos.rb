class CreateCatAlimentos < ActiveRecord::Migration
  def change
    create_table :cat_alimentos do |t|

      t.timestamps
    end
  end
end
