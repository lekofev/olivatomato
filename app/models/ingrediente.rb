class Ingrediente < ActiveRecord::Base
  attr_accessible :nombre, :peso, :descripcion, :calorias, :grasas, :protehinas, :carbohidratos, :text_1, :text_2, :orden, :visible, :cat_ingrediente_id
  belongs_to :cat_ingrediente
end
