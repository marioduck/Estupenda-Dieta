class PlanAlimenticio < ActiveRecord::Base
 	has_many :usuarios
	belongs_to :nutriologo
end
