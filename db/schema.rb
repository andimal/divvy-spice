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

ActiveRecord::Schema.define(version: 20150304220727) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "postgis"

  create_table "stations", force: :cascade do |t|
    t.string    "name"
    t.integer   "station_id"
    t.decimal   "lat",                                                                 precision: 10, scale: 6
    t.decimal   "lng",                                                                 precision: 10, scale: 6
    t.geography "lnglat",     limit: {:srid=>4326, :type=>"point", :geographic=>true}
    t.integer   "capacity"
    t.datetime  "online_at"
    t.datetime  "created_at",                                                                                   null: false
    t.datetime  "updated_at",                                                                                   null: false
  end

  add_index "stations", ["station_id"], name: "index_stations_on_station_id", using: :btree

  create_table "trips", force: :cascade do |t|
    t.integer  "trip_id"
    t.integer  "duration"
    t.integer  "from_station_id"
    t.integer  "to_station_id"
    t.string   "user_type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "trips", ["trip_id"], name: "index_trips_on_trip_id", using: :btree

end
