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

ActiveRecord::Schema.define(version: 20170807184518) do

  create_table "brands", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_brands_on_name", unique: true
  end

  create_table "shoes", force: :cascade do |t|
    t.string "model", null: false
    t.string "isbn", null: false
    t.string "sku", null: false
    t.integer "release_year", null: false
    t.date "edition_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.integer "brand_id"
    t.index ["brand_id"], name: "index_shoes_on_brand_id"
    t.index ["isbn"], name: "index_shoes_on_isbn", unique: true
    t.index ["model", "brand_id"], name: "index_shoes_on_model_and_brand_id", unique: true
    t.index ["sku"], name: "index_shoes_on_sku", unique: true
  end

end
