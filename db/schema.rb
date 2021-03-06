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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160825140530) do

  create_table "materials", force: :cascade do |t|
    t.integer  "recipe_id"
    t.string   "name"
    t.string   "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.string   "image"
    t.string   "name"
    t.string   "rid"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "fee"
    t.string   "time"
    t.string   "portion"
    t.binary   "main"
  end

  create_table "steps", force: :cascade do |t|
    t.integer  "recipe_id"
    t.string   "image"
    t.string   "content"
    t.integer  "turn"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer  "r_id"
    t.boolean  "cook"
    t.string   "mid"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "now_step"
    t.integer  "max_step"
  end

end
