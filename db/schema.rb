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

ActiveRecord::Schema.define(version: 20131211090415) do

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
    t.integer  "io_type"
    t.integer  "number"
    t.integer  "act_type"
    t.string   "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "records", ["product_id"], name: "index_records_on_product_id", using: :btree
  add_index "records", ["warehouse_id"], name: "index_records_on_warehouse_id", using: :btree

  create_table "warehouses", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
