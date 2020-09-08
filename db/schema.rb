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

ActiveRecord::Schema.define(version: 2020_09_08_182325) do

  create_table "moods", force: :cascade do |t|
    t.string "name"
    t.float "valence"
    t.boolean "is_danceable"
    t.boolean "high_valence"
    t.boolean "low_valence"
    t.boolean "is_loud"
    t.boolean "high_energy"
    t.boolean "low_energy"
    t.boolean "up_tempo"
  end

  create_table "song_moods", force: :cascade do |t|
    t.integer "song_id"
    t.integer "mood_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string "name"
    t.string "artist"
    t.string "song_uri"
    t.float "valence"
    t.float "dance_"
    t.float "loudness"
    t.float "energy"
    t.float "liveness"
    t.float "tempo"
  end

  create_table "user_songs", force: :cascade do |t|
    t.integer "user_id"
    t.integer "song_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "mood"
    t.string "user_uri"
  end

end
