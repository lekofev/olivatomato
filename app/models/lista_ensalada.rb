class ListaEnsalada < ActiveRecord::Base
  attr_accessible :titulo, :descripcion, :txt_adicional_1, :txt_adicional_2, :img_grande, :img_chica, :precio, :mineral_1, :mineral_2, :mineral_3, :mineral_4, :mineral_5, :mineral_6, :mineral_7, :orden, :visible, :ensalada_id

  mount_uploader :img_grande, ListaEnsaladaUploader
  mount_uploader :img_chica, ListaEnsaladaUploader
  belongs_to :ensalada
end
