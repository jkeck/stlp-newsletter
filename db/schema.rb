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

ActiveRecord::Schema.define(:version => 20121026201355) do

  create_table "assignments", :force => true do |t|
    t.text     "description"
    t.string   "link"
    t.integer  "newsletter_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "further_readings", :force => true do |t|
    t.string   "url"
    t.text     "description"
    t.integer  "newsletter_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "key_points", :force => true do |t|
    t.text     "description"
    t.text     "points"
    t.integer  "newsletter_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "main_contents", :force => true do |t|
    t.string   "image"
    t.text     "body"
    t.boolean  "body_overlay"
    t.integer  "newsletter_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "misc_contents", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "newsletter_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "newsletters", :force => true do |t|
    t.integer  "session"
    t.string   "dates"
    t.integer  "year"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "next_steps", :force => true do |t|
    t.text     "body"
    t.text     "steps"
    t.integer  "newsletter_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "quotes", :force => true do |t|
    t.text     "quote"
    t.string   "author"
    t.integer  "newsletter_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
