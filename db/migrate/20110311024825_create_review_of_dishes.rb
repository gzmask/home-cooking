class CreateReviewOfDishes < ActiveRecord::Migration
  def self.up
    create_table :review_of_dishes do |t|
      t.integer :dish_id
      t.integer :user_id
      t.text :content
      t.float :points

      t.timestamps
    end
  end

  def self.down
    drop_table :review_of_dishes
  end
end
