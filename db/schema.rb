# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20111222125216) do

  create_table "ads", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "price"
    t.date     "purchased_date"
    t.date     "expiry_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.text     "address"
    t.integer  "telephone"
    t.integer  "fax"
    t.string   "email"
    t.string   "hashed_password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "package_of_products", :force => true do |t|
    t.string   "name",           :null => false
    t.text     "description"
    t.decimal  "price"
    t.date     "purchased_date"
    t.date     "expiry_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.string   "category"
    t.text     "description"
    t.string   "image_url"
    t.string   "link_url"
    t.decimal  "price",       :precision => 8, :scale => 2
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "client_id"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "subscriptions", :force => true do |t|
    t.string   "name",           :null => false
    t.text     "description"
    t.decimal  "price"
    t.date     "purchased_date"
    t.date     "expiry_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
