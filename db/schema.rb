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

ActiveRecord::Schema.define(version: 2021_09_09_074724) do

  create_table "partners", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "referral_source"
    t.integer "age"
    t.string "work"
    t.string "hobby"
    t.string "holiday"
    t.string "income"
    t.string "allergy"
    t.string "like"
    t.string "not_fit"
    t.string "note"
    t.string "firstdate_detail"
    t.string "firstdate_appearance"
    t.string "firstdate_talk"
    t.string "firstdate_feeling"
    t.string "seconddate_detail"
    t.string "seconddate_appearance"
    t.string "seconddate_talk"
    t.string "seconddate_feeling"
    t.string "thirddate_detail"
    t.string "thirddate_appearance"
    t.string "thirddate_talk"
    t.string "thirddate_feeling"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_partners_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.string "crypted_password"
    t.string "salt"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_users_on_name", unique: true
  end

end
