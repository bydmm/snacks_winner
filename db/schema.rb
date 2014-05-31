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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140531100826) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: true do |t|
    t.integer  "user_id"
    t.text     "content"
    t.integer  "snack_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "finishes", force: true do |t|
    t.integer  "snack_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "finishes", ["snack_id"], name: "index_finishes_on_snack_id", using: :btree

  create_table "inventories", force: true do |t|
    t.integer  "snack_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "inventories", ["snack_id"], name: "index_inventories_on_snack_id", using: :btree

  create_table "likes", force: true do |t|
    t.integer  "snack_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "snacks", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cover"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wishes", force: true do |t|
    t.integer  "snack_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "wishes", ["snack_id"], name: "index_wishes_on_snack_id", using: :btree

end
