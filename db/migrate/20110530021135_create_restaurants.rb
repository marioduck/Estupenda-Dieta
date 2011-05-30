class CreateRestaurants < ActiveRecord::Migration
  def self.up
    create_table :restaurants do |t|
      t.string :nombre
      t.string :email
      t.string :password
      t.string :direccion_calle
      t.string :direccion_numero
      t.string :direccion_colonia
      t.integer :direccion_cp
      t.string :direccion_cuidad
      t.string :direccion_estado
      t.integer :telefono

      t.timestamps
    end
  end

  def self.down
    drop_table :restaurants
  end
end
