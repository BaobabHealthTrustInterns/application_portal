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

ActiveRecord::Schema.define(:version => 20140714145750) do

  create_table "hits", :force => true do |t|
    t.integer "service_id"
    t.string  "hit_time",   :default => "2014-07-18 11:59:09 -0400"
  end

  create_table "locations", :force => true do |t|
    t.string   "facility"
    t.string   "district"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", :force => true do |t|
    t.string   "name"
    t.string   "permalink"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "services", ["permalink"], :name => "index_services_on_permalink"

  create_table "users", :force => true do |t|
    t.string   "first_name",    :limit => 15
    t.string   "last_name",     :limit => 15
    t.string   "username",      :limit => 15
    t.string   "password_hash"
    t.string   "password_salt"
    t.string   "email",         :limit => 30
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
