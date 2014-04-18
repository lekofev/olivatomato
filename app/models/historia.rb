class Historia < ActiveRecord::Base
  attr_accessible :titulo, :descripcion, :imagen, :txt_adicional_1, :txt_adicional_2, :orden, :visible
  mount_uploader :imagen, HistoriaUploader

end
