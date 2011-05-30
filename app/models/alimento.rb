class Alimento < ActiveRecord::Base
	belongs_to :medida
	belongs_to :etiqueta
end
