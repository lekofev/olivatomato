class Enfermedad < ActiveRecord::Base
  attr_accessible :nombre, :tipo, :descripcion, :text_1, :text_2, :orden, :visible
end