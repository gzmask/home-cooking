class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.integer :user_id
      t.integer :dish_id
      t.integer :quantity
      t.text :notes
      t.datetime :pick_upo_time
      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
