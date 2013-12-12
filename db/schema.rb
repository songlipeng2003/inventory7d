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

ActiveRecord::Schema.define(version: 20131211094244) do

  create_table "inventories", force: true do |t|
    t.integer  "warehouse_id"
    t.integer  "product_id"
    t.integer  "number",       default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "inventories", ["product_id"], name: "index_inventories_on_product_id", using: :btree
  add_index "inventories", ["warehouse_id"], name: "index_inventories_on_warehouse_id", using: :btree

  create_table "products", force: true do |t|
    t.string   "sn"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "stock",       default: 0
  end

  create_table "records", force: true do |t|
    t.integer  "warehouse_id"
    t.integer  "product_id"
    t.integer  "ios_type"
    t.integer  "number"
    t.integer  "act_type"
    t.string   "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "records", ["product_id"], name: "index_records_on_product_id", using: :btree
  add_index "records", ["warehouse_id"], name: "index_records_on_warehouse_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "warehouses", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
