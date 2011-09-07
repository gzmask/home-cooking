class CreateReviewOfUsers < ActiveRecord::Migration
  def self.up
    create_table :review_of_users do |t|
      t.integer :poster_id
      t.integer :user_id
      t.text :content
      t.float :points

      t.timestamps
    end
  end

  def self.down
    drop_table :review_of_users
  end
end
