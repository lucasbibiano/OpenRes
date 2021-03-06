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

ActiveRecord::Schema.define(version: 20131109213307) do

  create_table "object_resources", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "sector_id"
    t.integer  "place_id"
    t.string   "serial_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "object_resources", ["place_id"], name: "index_object_resources_on_place_id"
  add_index "object_resources", ["sector_id"], name: "index_object_resources_on_sector_id"

  create_table "places", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "code"
    t.integer  "capacity"
    t.integer  "sector_id"
    t.integer  "room_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "places", ["room_type_id"], name: "index_places_on_room_type_id"
  add_index "places", ["sector_id"], name: "index_places_on_sector_id"

  create_table "reservations", force: true do |t|
    t.datetime "begin_time"
    t.datetime "end_time"
    t.string   "status"
    t.integer  "user_id"
    t.integer  "place_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reservations", ["place_id"], name: "index_reservations_on_place_id"
  add_index "reservations", ["user_id"], name: "index_reservations_on_user_id"

  create_table "room_types", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sectors", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

# Could not dump table "users" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

end
