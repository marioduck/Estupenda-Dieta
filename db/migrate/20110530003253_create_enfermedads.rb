class CreateEnfermedads < ActiveRecord::Migration
  def self.up
    create_table :enfermedads do |t|
      t.string :nombre
      t.text :descripcion
      t.references :usuario

      t.timestamps
    end
  end

  def self.down
    drop_table :enfermedads
  end
end
