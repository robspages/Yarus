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

ActiveRecord::Schema.define(:version => 20130629010307) do

  create_table "analytics", :force => true do |t|
    t.integer  "link_id"
    t.integer  "short_url_id"
    t.integer  "clickcount"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "clicks", :force => true do |t|
    t.string   "referer"
    t.string   "ip"
    t.datetime "clickdate"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.decimal  "Longitude"
    t.decimal  "Latitude"
  end

  create_table "httpstatuses", :force => true do |t|
    t.string   "status_code"
    t.integer  "link_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "links", :force => true do |t|
    t.text     "fullurl"
    t.string   "shorturl"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.boolean  "active"
  end

  create_table "short_urls", :force => true do |t|
    t.string   "shortcode"
    t.boolean  "active"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "link_id"
  end

  add_index "short_urls", ["shortcode"], :name => "index_short_urls_on_shortcode", :unique => true

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "logintoken"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
