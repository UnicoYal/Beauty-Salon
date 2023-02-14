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

ActiveRecord::Schema[7.0].define(version: 2023_02_07_133845) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

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
