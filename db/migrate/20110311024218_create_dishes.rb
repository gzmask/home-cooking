class CreateDishes < ActiveRecord::Migration
  def self.up
    create_table :dishes do |t|
      t.integer :menu_id
      t.string :name
      t.float :price

      t.timestamps
    end
  end

  def self.down
    drop_table :dishes
  end
end
