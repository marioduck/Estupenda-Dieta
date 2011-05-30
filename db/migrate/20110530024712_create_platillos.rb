class CreatePlatillos < ActiveRecord::Migration
  def self.up
    create_table :platillos do |t|
      t.string :nombre
      t.text :descripcion
      t.float :calorias
      t.float :grasas_saturadas
      t.float :grasas_trans
      t.float :proteinas
      t.float :colesterol
      t.float :fibra
      t.float :azucares
      t.float :potasio
      t.float :carbohidratos
      t.float :fosforo
      t.float :sodio
      t.float :calcio
      t.float :hierro
      t.float :aceites
      t.float :vitamina_c
      t.float :vitamina_a
      t.references :menu
      t.timestamps
    end
  end

  def self.down
    drop_table :platillos
  end
end
