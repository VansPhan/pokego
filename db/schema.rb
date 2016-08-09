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

ActiveRecord::Schema.define(version: 20160809192636) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bonds", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "pokemon_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pokemon_id"], name: "index_bonds_on_pokemon_id", using: :btree
    t.index ["user_id"], name: "index_bonds_on_user_id", using: :btree
  end

  create_table "moves", force: :cascade do |t|
    t.string   "name"
    t.integer  "damage"
    t.integer  "dps"
    t.string   "poke_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "moves_pokemons", id: false, force: :cascade do |t|
    t.integer "pokemon_id", null: false
    t.integer "move_id",    null: false
    t.index ["move_id", "pokemon_id"], name: "index_moves_pokemons_on_move_id_and_pokemon_id", using: :btree
    t.index ["pokemon_id", "move_id"], name: "index_moves_pokemons_on_pokemon_id_and_move_id", using: :btree
  end

  create_table "pokemons", force: :cascade do |t|
    t.string   "name"
    t.integer  "cp"
    t.text     "description"
    t.string   "poke_type"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "bonds", "pokemons"
  add_foreign_key "bonds", "users"
end
