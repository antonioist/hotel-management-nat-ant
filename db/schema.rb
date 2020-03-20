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

ActiveRecord::Schema.define(version: 2020_03_20_052954) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "amenities", force: :cascade do |t|
    t.string "drink"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "booking_amenities", force: :cascade do |t|
    t.bigint "booking_id"
    t.bigint "amenity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["amenity_id"], name: "index_booking_amenities_on_amenity_id"
    t.index ["booking_id"], name: "index_booking_amenities_on_booking_id"
  end

  create_table "booking_items", force: :cascade do |t|
    t.bigint "menu_item_id"
    t.bigint "booking_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_booking_items_on_booking_id"
    t.index ["menu_item_id"], name: "index_booking_items_on_menu_item_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.string "category"
    t.boolean "status", default: false
    t.bigint "room_id"
    t.bigint "worker_id"
    t.bigint "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_bookings_on_client_id"
    t.index ["room_id"], name: "index_bookings_on_room_id"
    t.index ["worker_id"], name: "index_bookings_on_worker_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "social_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hotels", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menu_items", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "room_categories", force: :cascade do |t|
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.integer "number"
    t.integer "price"
    t.bigint "hotel_id"
    t.bigint "room_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hotel_id"], name: "index_rooms_on_hotel_id"
    t.index ["room_category_id"], name: "index_rooms_on_room_category_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.bigint "hotel_id"
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["hotel_id"], name: "index_users_on_hotel_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "workers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.bigint "hotel_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hotel_id"], name: "index_workers_on_hotel_id"
  end

  add_foreign_key "booking_amenities", "amenities"
  add_foreign_key "booking_amenities", "bookings"
  add_foreign_key "booking_items", "bookings"
  add_foreign_key "booking_items", "menu_items"
  add_foreign_key "bookings", "clients"
  add_foreign_key "bookings", "rooms"
  add_foreign_key "bookings", "workers"
  add_foreign_key "rooms", "hotels"
  add_foreign_key "rooms", "room_categories"
  add_foreign_key "users", "hotels"
  add_foreign_key "workers", "hotels"
end
