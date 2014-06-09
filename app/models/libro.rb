class Libro < ActiveRecord::Base
  # attr_accessible :title, :body
	attr_accessible :nombre, :apellido, :telefono, :email, :mensaje, :text_1,:text_2, :orden, :visible
	validates :nombre, presence: true
	validates :apellido, presence: true
	validates :telefono, presence: true
	validates :email, presence: true
	validates :mensaje, presence: true
	validates :text_1, presence: true
	validates :text_2, presence: true
end
