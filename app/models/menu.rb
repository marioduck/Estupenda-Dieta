class Menu < ActiveRecord::Base
	belongs_to :restaurant
	has_many :platillos
end
