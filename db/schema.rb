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

ActiveRecord::Schema.define(version: 2019_10_27_002128) do

  create_table "conferences", force: :cascade do |t|
    t.string "conference_name"
    t.integer "conference_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "divisions", force: :cascade do |t|
    t.string "division_name"
    t.integer "division_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "players", force: :cascade do |t|
    t.integer "player_id"
    t.integer "jersey_number"
    t.string "position_type"
    t.string "position_name"
    t.string "full_name"
    t.integer "team_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["team_id"], name: "index_players_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.integer "team_id"
    t.string "name"
    t.string "venue"
    t.string "city"
    t.string "division_name"
    t.string "conference_name"
    t.integer "year"
    t.integer "conference_id", null: false
    t.integer "division_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["conference_id"], name: "index_teams_on_conference_id"
    t.index ["division_id"], name: "index_teams_on_division_id"
  end

  add_foreign_key "players", "teams"
  add_foreign_key "teams", "conferences"
  add_foreign_key "teams", "divisions"
end
