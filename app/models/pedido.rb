class Pedido < ActiveRecord::Base
  attr_accessible :nombre,:telefono, :ensalada_id, :ensalada_nombre, :ensalada_precio, :orden, :visible, :apellido, :direccion, :referencia, :mensaje, :tipo_de_pago, :monto, :tipo_tarjeta, :pago, :estado, :email


	validates :ensalada_nombre, presence: true
	validates :ensalada_precio, presence: true
	validates :nombre, presence: true
	validates :apellido, presence: true
	validates :telefono, presence: true
	validates :email, presence: true
	validates :direccion, presence: true
	validates :referencia, presence: true
	validates :tipo_de_pago, presence: true

end