# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_02_07_123519) do
  create_table "depilations", force: :cascade do |t|
    t.string "title", null: false
    t.string "price", null: false
    t.index ["title"], name: "index_depilations_on_title", unique: true
  end

  create_table "makeups", force: :cascade do |t|
    t.string "title", null: false
    t.string "price", null: false
    t.index ["title"], name: "index_makeups_on_title", unique: true
  end

  create_table "man_hair_cuts", force: :cascade do |t|
    t.string "title", null: false
    t.integer "price", null: false
    t.index ["title"], name: "index_man_hair_cuts_on_title", unique: true
  end

  create_table "manicures", force: :cascade do |t|
    t.string "title", null: false
    t.integer "price", null: false
    t.index ["title"], name: "index_manicures_on_title", unique: true
  end

  create_table "pedicures", force: :cascade do |t|
    t.string "title", null: false
    t.integer "price", null: false
    t.index ["title"], name: "index_pedicures_on_title", unique: true
  end

  create_table "women_hair_cuts", force: :cascade do |t|
    t.string "title", null: false
    t.string "price_lower_ten", null: false
    t.string "price_ten_to_twenty"
    t.string "price_upper_twenty"
    t.index ["title"], name: "index_women_hair_cuts_on_title", unique: true
  end

end
