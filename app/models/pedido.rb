class Pedido < ActiveRecord::Base
  attr_accessible :nombre,:telefono, :ensalada_id, :ensalada_nombre, :ensalada_precio, :orden, :visible, :apellido, :direccion, :referencia, :mensaje, :tipo_de_pago, :monto, :tipo_tarjeta, :pago, :estado, :email

end