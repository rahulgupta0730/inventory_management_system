# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_15_172639) do

  create_table "products", force: :cascade do |t|
    t.string "sku_code"
    t.string "name"
    t.decimal "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "productthresholds", force: :cascade do |t|
    t.integer "threshold", default: 10
    t.integer "count", default: 0
    t.integer "product_id", null: false
    t.integer "warehouse_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_productthresholds_on_product_id"
    t.index ["warehouse_id"], name: "index_productthresholds_on_warehouse_id"
  end

  create_table "warehouses", force: :cascade do |t|
    t.string "wh_code"
    t.string "name"
    t.string "pincode"
    t.string "city"
    t.integer "max_capacity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "productthresholds", "products"
  add_foreign_key "productthresholds", "warehouses"
end
