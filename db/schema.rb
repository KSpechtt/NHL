# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 20_191_007_235_030) do
  create_table 'players', force: :cascade do |t|
    t.integer 'nhlplayerid'
    t.integer 'nhlteamid'
    t.integer 'jerseynumber'
    t.string 'positiontype'
    t.string 'positionname'
    t.string 'fullname'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'teams', force: :cascade do |t|
    t.integer 'nhlteamid'
    t.string 'name'
    t.string 'venue'
    t.string 'city'
    t.string 'division'
    t.integer 'divisionid'
    t.string 'conference'
    t.integer 'conferenceid'
    t.integer 'year'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end
end
