class Restaurant < ActiveRecord::Base
	has_many :menus
	has_many :horarios
end
