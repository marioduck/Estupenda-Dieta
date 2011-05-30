class CreateNutriologos < ActiveRecord::Migration
  def self.up
    create_table :nutriologos do |t|
      t.string :nombre_pila
      t.string :nombre_ap
      t.string :nombre_am
      t.string :email
      t.string :password
      t.date :fecha_nacimiento
      t.integer :sexo
      t.string :direccion_calle
      t.string :direccion_numero
      t.string :direccion_colonia
      t.integer :direccion_cp
      t.string :direccion_cuidad
      t.integer :telefono
      t.string :cedula_profesional
      t.string :institucion

      t.timestamps
    end
  end

  def self.down
    drop_table :nutriologos
  end
end
