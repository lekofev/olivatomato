class Nutricion < ActiveRecord::Base
  attr_accessible :titulo, :parrafo, :nombre_producto, :img_producto, :mineral_1, :mineral_2, :mineral_3, :mineral_4, :mineral_5, :mineral_6, :mineral_7, :sabias_que, :fuente, :txt_adicional_1, :txt_adicional_2, :orden, :visible
  mount_uploader :img_producto, NutricionUploader

end
