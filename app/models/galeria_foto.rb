class GaleriaFoto < ActiveRecord::Base
  attr_accessible :titulo, :descripcion, :img_grande, :miniatura, :txt_adicional_1, :txt_adicional_2, :orden, :visible, :imagen_id
  mount_uploader :img_grande, GaleriaFotoUploader
  mount_uploader :miniatura, GaleriaFotoUploader
  belongs_to :imagen

end
