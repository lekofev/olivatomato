class CreateSiteInfos < ActiveRecord::Migration
  def change
    create_table :site_infos do |t|
    	t.string "doc_title"
    	t.string "facebook_link"
    	t.string "twitter_link"
    	t.string "email_link"
    	t.string "telefono"
    	t.string "site_title"
    	t.string "site_desc"
    	t.string "site_keywords"
    	t.string "og_title"
    	t.string "og_desc"
    	t.string "og_url"
    	t.string "og_image"
    	t.string "og_site_name"
    	t.string "texto_adicional_1"
    	t.string "texto_adicional_2"
    	t.string "texto_adicional_3"
    	t.string "texto_adicional_4"
      t.timestamps
    end
  end
end
