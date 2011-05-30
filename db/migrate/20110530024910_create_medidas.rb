class CreateMedidas < ActiveRecord::Migration
  def self.up
    create_table :medidas do |t|
      t.string :nombre

      t.timestamps
    end
  end

  def self.down
    drop_table :medidas
  end
end
