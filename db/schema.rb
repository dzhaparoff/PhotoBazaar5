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

ActiveRecord::Schema.define(version: 20150309105348) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "best_photo_of_the_days", force: true do |t|
    t.integer  "photo_id"
    t.date     "day"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "best_photo_of_the_days", ["photo_id"], name: "index_best_photo_of_the_days_on_photo_id", using: :btree

  create_table "cameras", force: true do |t|
    t.string   "name"
    t.string   "code"
    t.string   "brand"
    t.string   "camera_type"
    t.string   "lens_mount"
    t.integer  "photos_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "cat_id"
    t.integer  "photos_count", default: 0
    t.integer  "parent_id"
    t.boolean  "subcategory"
    t.integer  "lvl",          default: 1
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sort",         default: 100
    t.string   "name_l18n"
  end

  create_table "photographers", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.string   "username"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "fullname"
    t.string   "city"
    t.string   "country"
    t.string   "userpic"
    t.string   "sex"
    t.string   "domain"
    t.text     "description"
    t.json     "equipment"
    t.json     "contacts"
    t.integer  "photos_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photos", force: true do |t|
    t.string   "name"
    t.integer  "photographer_id"
    t.text     "description"
    t.string   "camera"
    t.string   "lens"
    t.string   "focal_length"
    t.string   "iso"
    t.string   "shutter_speed"
    t.string   "aperture"
    t.integer  "times_viewed"
    t.decimal  "rating"
    t.datetime "created_at"
    t.integer  "category_id"
    t.string   "location"
    t.string   "latitude"
    t.string   "longitude"
    t.datetime "taken_at"
    t.integer  "width"
    t.integer  "height"
    t.integer  "votes_count"
    t.integer  "favorites_count"
    t.boolean  "nsfw"
    t.decimal  "highest_rating"
    t.integer  "license_type"
    t.string   "original_url"
    t.string   "local_image_url"
    t.string   "base_color"
    t.string   "base_color_name"
    t.json     "colors"
    t.datetime "updated_at"
    t.integer  "camera_id"
    t.integer  "photo_id"
    t.string   "thumbnails_file_name"
    t.string   "thumbnails_content_type"
    t.integer  "thumbnails_file_size"
    t.datetime "thumbnails_updated_at"
  end

  add_index "photos", ["category_id"], name: "index_photos_on_category_id", using: :btree
  add_index "photos", ["photographer_id"], name: "index_photos_on_photographer_id", using: :btree

  create_table "seos", force: true do |t|
    t.string  "title"
    t.string  "description"
    t.string  "keywords"
    t.integer "resource_id"
    t.string  "resource_type"
  end

  add_index "seos", ["resource_id", "resource_type"], name: "index_seos_on_resource_id_and_resource_type", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.integer  "photographer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
