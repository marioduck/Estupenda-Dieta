class CreateHorarios < ActiveRecord::Migration
  def self.up
    create_table :horarios do |t|
      t.string :dia
      t.string :apertura
      t.string :cierre
      t.references :restaurant
      t.timestamps
    end
  end

  def self.down
    drop_table :horarios
  end
end
