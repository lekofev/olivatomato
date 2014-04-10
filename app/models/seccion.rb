class Seccion < ActiveRecord::Base
  attr_accessible :titulo, :parrafo, :txt_adicional_1, :txt_adicional_2, :visible
  has_many :banner_inicios


end
