class CreateMenus < ActiveRecord::Migration
  def self.up
    create_table :menus do |t|
      t.string :nombre
      t.text :descripcion
      t.references :restaurant
      t.timestamps
    end
  end

  def self.down
    drop_table :menus
  end
end
