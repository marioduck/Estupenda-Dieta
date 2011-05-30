class RegistroAlimento < ActiveRecord::Base
	belongs_to :usuario
	belongs_to :etiqueta
	belongs_to :alimento
end
