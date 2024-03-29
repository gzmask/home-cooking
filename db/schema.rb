# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110311212236) do

  create_table "dishes", :force => true do |t|
    t.integer  "menu_id"
    t.string   "name"
    t.float    "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menus", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "offers", :force => true do |t|
    t.integer  "user_id"
    t.integer  "dish_id"
    t.datetime "beginning_time"
    t.datetime "ending_time"
    t.integer  "limits"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", :force => true do |t|
    t.integer  "user_id"
    t.integer  "dish_id"
    t.integer  "quantity"
    t.text     "notes"
    t.datetime "pick_upo_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "review_of_dishes", :force => true do |t|
    t.integer  "dish_id"
    t.integer  "user_id"
    t.text     "content"
    t.float    "points"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "review_of_users", :force => true do |t|
    t.integer  "poster_id"
    t.integer  "user_id"
    t.text     "content"
    t.float    "points"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "user_name"
    t.string   "pwd"
    t.string   "city"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "salt"
    t.string   "email"
  end

end
