class CreateOffers < ActiveRecord::Migration
  def self.up
    create_table :offers do |t|
      t.integer :user_id
      t.integer :dish_id
      t.datetime :beginning_time
      t.datetime :ending_time
      t.integer :limits

      t.timestamps
    end
  end

  def self.down
    drop_table :offers
  end
end
