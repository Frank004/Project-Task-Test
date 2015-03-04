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

ActiveRecord::Schema.define(version: 20150304030651) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "project_tasks", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.boolean  "completed",                 default: false
    t.string   "manager"
    t.string   "manager_sign_file_name"
    t.string   "manager_sign_content_type"
    t.integer  "manager_sign_file_size"
    t.datetime "manager_sign_updated_at"
    t.string   "client"
    t.string   "client_sign_file_name"
    t.string   "client_sign_content_type"
    t.integer  "client_sign_file_size"
    t.datetime "client_sign_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedules", force: :cascade do |t|
    t.integer  "schedulable_id"
    t.string   "schedulable_type"
    t.date     "date"
    t.time     "time"
    t.string   "rule"
    t.string   "interval"
    t.text     "days"
    t.text     "day_of_week"
    t.date     "until"
    t.integer  "count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "task_occurrences", force: :cascade do |t|
    t.integer  "project_task_id"
    t.datetime "date"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "schedulable_id"
    t.string   "schedulable_type"
  end

  add_index "task_occurrences", ["project_task_id"], name: "index_task_occurrences_on_project_task_id", using: :btree

  add_foreign_key "task_occurrences", "project_tasks"
end
