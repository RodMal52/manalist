# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140308232411) do

  create_table "card_expansions", id: false, force: true do |t|
    t.integer  "expansion_id"
    t.integer  "card_id"
    t.string   "rarity"
    t.integer  "card_num"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cards", force: true do |t|
    t.string   "cardname"
    t.string   "manacost"
    t.string   "color"
    t.string   "power"
    t.string   "toughness"
    t.integer  "loyalty_counter"
    t.string   "card_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "description"
  end

  create_table "deck_cards", force: true do |t|
    t.string   "card_name"
    t.integer  "deck_id"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "deck_matchups", force: true do |t|
    t.integer  "deck_id_1"
    t.integer  "deck_id_2"
    t.integer  "wins"
    t.integer  "losses"
    t.integer  "draws"
    t.date     "match_date"
    t.integer  "config_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "deck_sides", force: true do |t|
    t.integer  "deck_id"
    t.integer  "side_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "decks", force: true do |t|
    t.integer  "deck_id"
    t.string   "username"
    t.string   "name"
    t.string   "format"
    t.string   "type"
    t.string   "colors"
    t.integer  "rating"
    t.date     "creation_date"
    t.date     "last_update"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "expansions", force: true do |t|
    t.string   "set_code"
    t.string   "name"
    t.string   "symbol"
    t.integer  "size"
    t.integer  "common_cards_num"
    t.integer  "uncommon_cards_num"
    t.integer  "rare_cards_num"
    t.integer  "mythic_cards_num"
    t.integer  "other_cards_num"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "friendly_id_slugs", force: true do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"

  create_table "player_relationships", force: true do |t|
    t.string   "username_1"
    t.string   "username_2"
    t.string   "relationship_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "side_boards", force: true do |t|
    t.integer  "side_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "side_cards", force: true do |t|
    t.integer  "side_id"
    t.string   "card_name"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username",               default: "",    null: false
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.boolean  "admin",                  default: false, null: false
    t.boolean  "locked",                 default: false, null: false
    t.string   "slug"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["slug"], name: "index_users_on_slug", unique: true
  add_index "users", ["username"], name: "index_users_on_username", unique: true

end
