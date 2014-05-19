class Cliente < ActiveRecord::Base
  attr_accessible :nombre, :apellido, :telefono, :email, :direccion, :referencia, :text_1, :text_2, :text_3, :orden, :visible

end