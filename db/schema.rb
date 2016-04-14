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

ActiveRecord::Schema.define(version: 9) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assigned_age_groups", force: :cascade do |t|
    t.string "age"
  end

  create_table "assigned_age_groups_boxes", id: false, force: :cascade do |t|
    t.integer "assigned_age_group_id", null: false
    t.integer "box_id",                null: false
  end

  create_table "assigned_age_groups_skills", id: false, force: :cascade do |t|
    t.integer "assigned_age_group_id", null: false
    t.integer "skill_id",              null: false
  end

  create_table "boxes", force: :cascade do |t|
    t.string  "name"
    t.integer "assigned_age_group_id"
    t.boolean "label"
    t.string  "location"
    t.boolean "cleaned"
    t.boolean "checked_out"
  end

  create_table "boxes_skills", id: false, force: :cascade do |t|
    t.integer "box_id",   null: false
    t.integer "skill_id", null: false
  end

  create_table "boxes_toys", id: false, force: :cascade do |t|
    t.integer "box_id", null: false
    t.integer "toy_id", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.text   "description"
  end

  create_table "skills_toys", id: false, force: :cascade do |t|
    t.integer "skill_id", null: false
    t.integer "toy_id",   null: false
  end

  create_table "toys", force: :cascade do |t|
    t.string  "name"
    t.string  "brand"
    t.string  "mfg_website"
    t.integer "quantity_wanted"
    t.integer "quantity_have"
    t.string  "upc"
    t.string  "mfg_suggested_age_range"
    t.integer "pieces"
    t.text    "extended_play_idea"
    t.string  "store_purchased_from"
    t.string  "purchase_price"
    t.string  "country_of_origin"
    t.boolean "batteries_required"
    t.integer "box_id"
  end

end
