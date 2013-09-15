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

ActiveRecord::Schema.define(:version => 20130915225408) do

  create_table "images", :force => true do |t|
    t.integer  "venue_id",   :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "venue_features", :force => true do |t|
    t.string   "name",          :null => false
    t.string   "icon_filename", :null => false
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "venue_features_venues", :id => false, :force => true do |t|
    t.integer "venue_id",         :null => false
    t.integer "venue_feature_id", :null => false
  end

  add_index "venue_features_venues", ["venue_feature_id"], :name => "fk_venues_venue_features_feature_id"
  add_index "venue_features_venues", ["venue_id"], :name => "fk_venues_venue_features_venue_id"

  create_table "venues", :force => true do |t|
    t.string   "name",                                        :null => false
    t.string   "street_1",                                    :null => false
    t.string   "street_2",                                    :null => false
    t.string   "city",                                        :null => false
    t.string   "state",                                       :null => false
    t.string   "postal_code",                                 :null => false
    t.string   "website"
    t.string   "contact_phone"
    t.string   "contact_email"
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
    t.decimal  "price",         :precision => 8, :scale => 2
    t.integer  "max_people"
    t.integer  "rating"
    t.integer  "review_count"
    t.string   "review_text"
  end

end
