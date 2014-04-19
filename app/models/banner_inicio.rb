class BannerInicio < ActiveRecord::Base
  attr_accessible :img_titulo, :img_parrafo, :img_url, :img_link, :orden, :visible, :seccion_id
  mount_uploader :img_url, BannerinicioUploader
  belongs_to :seccion

end