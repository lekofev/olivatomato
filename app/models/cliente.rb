class Cliente < ActiveRecord::Base
  attr_accessible :nombre, :apellido, :telefono, :email, :direccion, :referencia, :text_1, :text_2, :text_3, :orden, :visible


	validates :nombre, presence: true
	validates :apellido, presence: true
	validates :telefono, presence: true
	validates :email, presence: true
	validates :direccion, presence: true
	validates :referencia, presence: true

end