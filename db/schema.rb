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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121103172129) do

  create_table "availabilities", :force => true do |t|
    t.integer  "participant_id"
    t.date     "on"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "availabilities", ["participant_id"], :name => "index_availabilities_on_participant_id"

  create_table "calendars", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.date     "range_start"
    t.date     "range_end"
    t.string   "token"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "calendars", ["token"], :name => "index_calendars_on_token"

  create_table "participants", :force => true do |t|
    t.integer  "calendar_id"
    t.string   "name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "participants", ["calendar_id"], :name => "index_participants_on_calendar_id"

end
