# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180321215827) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "club_types", force: :cascade do |t|
    t.string "name"
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.datetime "dateTime"
    t.string "location"
    t.string "fieldType"
    t.string "fieldConditions"
    t.string "weather"
    t.integer "temperature"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games_teams", id: false, force: :cascade do |t|
    t.bigint "game_id", null: false
    t.bigint "team_id", null: false
    t.index ["game_id", "team_id"], name: "index_games_teams_on_game_id_and_team_id"
  end

  create_table "player_ball_skills", force: :cascade do |t|
    t.integer "juggling"
    t.integer "dribbling"
    t.integer "receiving"
    t.integer "heading"
    t.integer "shooting"
    t.integer "longBalls"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "player_id"
    t.index ["player_id"], name: "index_player_ball_skills_on_player_id"
  end

  create_table "player_game_subdata", force: :cascade do |t|
    t.float "minutes"
    t.integer "attemptedPasses"
    t.integer "completedPasses"
    t.integer "corners"
    t.integer "crosses"
    t.integer "clearings"
    t.integer "longBalls"
    t.integer "thruBalls"
    t.integer "keyPasses"
    t.integer "attemptedFirstTouches"
    t.integer "successfulFirstTouches"
    t.integer "dribbles"
    t.integer "dispossessed"
    t.integer "fouled"
    t.integer "shots"
    t.integer "shotsOnTarget"
    t.integer "assists"
    t.integer "goals"
    t.integer "fiftyFiftiesWon"
    t.integer "tackles"
    t.integer "dribblePast"
    t.integer "interceptions"
    t.integer "interventions"
    t.integer "blocks"
    t.integer "ownGoals"
    t.integer "saves"
    t.integer "fouls"
    t.integer "yellowCards"
    t.integer "redCards"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "firstName"
    t.string "lastName"
    t.string "gender"
    t.date "dob"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players_teams", id: false, force: :cascade do |t|
    t.bigint "player_id", null: false
    t.bigint "team_id", null: false
    t.index ["player_id", "team_id"], name: "index_players_teams_on_player_id_and_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "club_type_id"
    t.index ["club_type_id"], name: "index_teams_on_club_type_id"
  end

end
