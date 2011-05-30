class CreateEtiqueta < ActiveRecord::Migration
  def self.up
    create_table :etiqueta do |t|
      t.string :nombre
      t.text :descripcion

      t.timestamps
    end
  end

  def self.down
    drop_table :etiqueta
  end
end
