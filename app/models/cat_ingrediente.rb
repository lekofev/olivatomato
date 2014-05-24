class CatIngrediente < ActiveRecord::Base
  attr_accessible :nombre, :precio, :descripcion, :text_1, :text_2, :orden, :visible
  has_many :ingredientes
end