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

ActiveRecord::Schema.define(version: 2021_02_02_024205) do

  create_table "bids", force: :cascade do |t|
    t.integer "years"
    t.integer "salary_per_year"
    t.integer "player_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["player_id"], name: "index_bids_on_player_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "position"
    t.string "real_mlb_team"
    t.integer "years"
    t.integer "salary_per_year"
    t.integer "team_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["team_id"], name: "index_players_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "logo"
    t.integer "total_salary"
    t.float "playoff_discount"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_teams_on_user_id"
  end

  create_table "user_bids", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "bid_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bid_id"], name: "index_user_bids_on_bid_id"
    t.index ["user_id"], name: "index_user_bids_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "bids", "players"
  add_foreign_key "players", "teams"
  add_foreign_key "teams", "users"
  add_foreign_key "user_bids", "bids"
  add_foreign_key "user_bids", "users"
end
