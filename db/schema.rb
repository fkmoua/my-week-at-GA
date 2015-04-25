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

ActiveRecord::Schema.define(version: 20150424215959) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.string   "date"
    t.string   "time"
    t.string   "location"
    t.text     "description"
    t.integer  "week_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "events", ["week_id"], name: "index_events_on_week_id", using: :btree

  create_table "resources", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.integer  "week_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "category"
    t.string   "description"
  end

  add_index "resources", ["week_id"], name: "index_resources_on_week_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "photo"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "linkedin"
    t.string   "github"
    t.string   "facebook"
  end

  create_table "weeks", force: :cascade do |t|
    t.string   "name"
    t.string   "date"
    t.string   "message"
    t.string   "this_week"
    t.string   "next_week"
    t.string   "office_hours"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_foreign_key "events", "weeks"
  add_foreign_key "resources", "weeks"
end
