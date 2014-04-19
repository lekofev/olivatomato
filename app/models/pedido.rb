class Pedido < ActiveRecord::Base
  attr_accessible :nombre,:telefono, :ensalada_id, :ensalada_nombre, :ensalada_precio, :orden, :visible

end