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

ActiveRecord::Schema.define(version: 20151127030651) do

  create_table "customers", force: :cascade do |t|
    t.string   "company_name"
    t.string   "zip"
    t.string   "address"
    t.string   "tel"
    t.string   "responsible_name"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "sales_histories", force: :cascade do |t|
    t.datetime "activity_time"
    t.integer  "customer_id"
    t.string   "sales_category"
    t.string   "sales_achievement"
    t.text     "detail"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "sales_histories", ["customer_id"], name: "index_sales_histories_on_customer_id"

end
