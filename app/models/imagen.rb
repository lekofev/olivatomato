class Imagen < ActiveRecord::Base
  attr_accessible :foto_titulo, :foto_descripcion, :video_titulo, :video_descripcion, :txt_adicional_1, :txt_adicional_2, :orden, :visible
  has_many :galeria_fotos
  has_many :galeria_videos
end