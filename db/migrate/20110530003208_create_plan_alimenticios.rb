class CreatePlanAlimenticios < ActiveRecord::Migration
  def self.up
    create_table :plan_alimenticios do |t|
      t.string :nombre
      t.text :descripcion
      t.integer :calorias
      t.integer :fibras
      t.integer :azucares
      t.integer :carbohidratos
      t.integer :proteinas
      t.integer :ingestas
      t.references :plan_alimenticio

      t.timestamps
    end
  end

  def self.down
    drop_table :plan_alimenticios
  end
end
