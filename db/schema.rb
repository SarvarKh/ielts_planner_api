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

ActiveRecord::Schema.define(version: 2021_09_01_104625) do

  create_table "results", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "writing_score"
    t.string "decimal"
    t.decimal "speaking_score"
    t.integer "reading_correct_answer"
    t.decimal "reading_score"
    t.integer "listening_correct_answer"
    t.decimal "listening_score"
    t.date "passed_date"
    t.decimal "overall_score"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_results_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "occupation"
    t.text "photo"
    t.string "email"
    t.string "password"
    t.integer "age"
    t.string "gender"
    t.decimal "level_initial"
    t.decimal "level_current"
    t.decimal "level_plan"
    t.date "due_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "results", "users"
end