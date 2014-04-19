class CreateBannerInicios < ActiveRecord::Migration
  def change
    create_table :banner_inicios do |t|
    	t.string "img_titulo"
    	t.text "img_parrafo"
    	t.string "img_url"
    	t.string "img_link"
    	t.integer "orden", :default => 0
    	t.boolean "visible", :default => true
      t.timestamps
    end
  end
end
