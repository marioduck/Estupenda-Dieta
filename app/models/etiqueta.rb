class Etiqueta < ActiveRecord::Base
    has_many :registro_alimentos
    has_many :alimentos
end
