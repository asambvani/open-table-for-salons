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

ActiveRecord::Schema.define(version: 20170630154711) do

  create_table "appointments", force: :cascade do |t|
    t.string "date_time"
    t.string "service"
    t.integer "stylist_id"
    t.integer "customer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
  end

  create_table "salons", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone"
    t.string "hours"
  end

  create_table "service_stylists", force: :cascade do |t|
    t.integer "service_id"
    t.integer "stylist_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.integer "price"
  end

  create_table "stylists", force: :cascade do |t|
    t.string "name"
    t.integer "salon_id"
  end

end
