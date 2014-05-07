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

ActiveRecord::Schema.define(version: 20140505200214) do

  create_table "comments", force: true do |t|
    t.string  "content"
    t.integer "commentable_id"
    t.string  "commentable_type"
  end

  create_table "events", force: true do |t|
    t.string "name"
    t.string "description"
    t.string "location"
  end

  create_table "photos", force: true do |t|
    t.string  "pic"
    t.integer "event_id"
    t.string  "description"
  end

  create_table "photos_tags", id: false, force: true do |t|
    t.integer "photo_id"
    t.integer "tag_id"
  end

  create_table "tags", force: true do |t|
    t.string "name"
    t.string "description"
  end

end
