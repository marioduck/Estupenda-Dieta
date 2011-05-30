class CreateHistorialPesos < ActiveRecord::Migration
  def self.up
    create_table :historial_pesos do |t|
      t.float :peso_anterior
      t.float :peso_actual
      t.date :fecha_registro
      t.integer :bmi
      t.references :usuario

      t.timestamps
    end
  end

  def self.down
    drop_table :historial_pesos
  end
end
