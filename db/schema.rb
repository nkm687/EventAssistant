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

ActiveRecord::Schema.define(:version => 20130910072650) do

  create_table "booths", :force => true do |t|
    t.integer  "number"
    t.text     "location"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "demos", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.text     "keywords"
    t.float    "avg_user_rating"
    t.text     "misc"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "booth_id"
  end

  create_table "demos_presenters", :id => false, :force => true do |t|
    t.integer "demo_id"
    t.integer "presenter_id"
  end

  create_table "presenters", :force => true do |t|
    t.string   "name"
    t.string   "team"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ratings", :force => true do |t|
    t.string   "username"
    t.integer  "demoid"
    t.integer  "rating"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "userratings", :force => true do |t|
    t.string   "name"
    t.integer  "demo"
    t.integer  "rating"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "extra"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end