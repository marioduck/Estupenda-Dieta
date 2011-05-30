class Usuario < ActiveRecord::Base
	has_one :historial_pesos
	has_one :plan_alimenticios
	has_many :registro_alimentos
	has_and_belongs_to_many :enfermedads
end
