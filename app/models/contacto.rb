class Contacto < ActiveRecord::Base
  # attr_accessible :title, :body
	attr_accessible :nombre, :apellido, :telefono, :email, :mensaje, :orden, :visible
	validates :nombre, presence: true
	validates :apellido, presence: true
	validates :telefono, presence: true
	validates :email, presence: true
	validates :mensaje, presence: true
end
