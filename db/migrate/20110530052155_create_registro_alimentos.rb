class CreateRegistroAlimentos < ActiveRecord::Migration
  def self.up
    create_table :registro_alimentos do |t|
      t.references :usuario
      t.references :alimento
      t.references :etiqueta
      t.date :fecha
      t.time :hora
      
      t.timestamps
    end
  end

  def self.down
    drop_table :registro_alimentos
  end
end
