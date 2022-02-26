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

ActiveRecord::Schema.define(version: 2021_10_27_024034) do

  create_table "keywords", force: :cascade do |t|
    t.integer "volume"
    t.text "description"
    t.text "query"
    t.integer "goal_pv"
    t.float "goal_cvr"
    t.integer "goal_price"
    t.float "goal_profit"
    t.integer "goal_rank"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id", "created_at"], name: "index_keywords_on_user_id_and_created_at"
    t.index ["user_id"], name: "index_keywords_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.text "introduction"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "remember_digest"
    t.float "total_goal_profit"
    t.text "media_url"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "keywords", "users"
end
