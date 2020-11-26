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

ActiveRecord::Schema.define(version: 2020_09_23_084559) do

  create_table "animes", force: :cascade do |t|
    t.string "title"
    t.float "valuation"
    t.integer "created_year"
    t.string "company"
    t.string "director"
    t.string "actor"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image"
    t.string "source"
    t.text "comment"
  end

  create_table "emotions", force: :cascade do |t|
    t.string "name"
    t.integer "genre_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["genre_id"], name: "index_emotions_on_genre_id"
  end

  create_table "emotions_of_animes", force: :cascade do |t|
    t.integer "emotion_id", null: false
    t.integer "anime_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["anime_id"], name: "index_emotions_of_animes_on_anime_id"
    t.index ["emotion_id"], name: "index_emotions_of_animes_on_emotion_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "situations", force: :cascade do |t|
    t.string "name"
    t.integer "genre_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["genre_id"], name: "index_situations_on_genre_id"
  end

  create_table "situations_of_animes", force: :cascade do |t|
    t.integer "situation_id", null: false
    t.integer "anime_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["anime_id"], name: "index_situations_of_animes_on_anime_id"
    t.index ["situation_id"], name: "index_situations_of_animes_on_situation_id"
  end

  add_foreign_key "emotions", "genres"
  add_foreign_key "emotions_of_animes", "animes"
  add_foreign_key "emotions_of_animes", "emotions"
  add_foreign_key "situations", "genres"
  add_foreign_key "situations_of_animes", "animes"
  add_foreign_key "situations_of_animes", "situations"
end
