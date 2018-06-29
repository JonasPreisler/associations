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

ActiveRecord::Schema.define(version: 2018_06_29_124710) do

  create_table "addresses", force: :cascade do |t|
    t.string "city"
    t.string "street"
    t.integer "place_id"
    t.integer "webview_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "option_1"
    t.index ["place_id"], name: "index_addresses_on_place_id"
    t.index ["webview_id"], name: "index_addresses_on_webview_id"
  end

  create_table "options", force: :cascade do |t|
    t.string "name"
    t.integer "address_id"
    t.integer "place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_options_on_address_id"
    t.index ["place_id"], name: "index_options_on_place_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "webview_id"
  end

  create_table "questions", force: :cascade do |t|
    t.integer "survey_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "surveys", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "webviews", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
