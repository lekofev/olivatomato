class GaleriaVideo < ActiveRecord::Base
  attr_accessible :titulo, :descripcion, :url_video, :miniatura, :txt_adicional_1, :txt_adicional_2, :orden, :visible, :imagen_id
  mount_uploader :miniatura, GaleriaVideoUploader
  has_many :galeria_fotos
end
