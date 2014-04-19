class SiteInfo < ActiveRecord::Base
  attr_accessible :doc_title, :facebook_link, :twitter_link, :email_link, :telefono, :site_title, :site_desc, :site_keywords, :og_title, :og_desc, :og_url, :og_image, :og_site_name, :texto_adicional_1, :texto_adicional_2, :texto_adicional_3, :texto_adicional_4
  mount_uploader :og_image, SiteInfoUploader
end
