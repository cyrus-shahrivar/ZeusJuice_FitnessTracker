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

ActiveRecord::Schema.define(version: 20160527154141) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.string   "body"
    t.string   "author"
    t.string   "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "journals", force: :cascade do |t|
    t.text     "entry"
    t.integer  "member_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.integer  "journal_num_entries"
    t.integer  "calorie_intake"
    t.integer  "minutes_exercised"
    t.integer  "steps"
    t.integer  "miles"
    t.integer  "calories_burned"
    t.integer  "weight"
    t.integer  "sleep"
    t.integer  "blood_sugar"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "calorie_intake_goal"
    t.string   "minutes_exercised_goal"
    t.string   "steps_goal"
    t.string   "miles_goal"
    t.string   "calories_burned_goal"
    t.string   "weight_goal"
    t.string   "sleep_goal"
    t.string   "blood_sugar_goal"
    t.string   "role"
  end

  create_table "tweets", force: :cascade do |t|
    t.string   "author"
    t.string   "body"
    t.integer  "member_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
