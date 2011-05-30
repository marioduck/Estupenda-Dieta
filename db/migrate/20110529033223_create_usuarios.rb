class CreateUsuarios < ActiveRecord::Migration
  def self.up
    create_table :usuarios do |t|
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
      t.float :altura
      t.float :peso
      t.integer :ingestas_diarias
      t.references :plan_alimenticio
      t.references :enfermedad

      t.timestamps
    end
  end

  def self.down
    drop_table :usuarios
  end
end
