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

ActiveRecord::Schema.define(version: 20171110083402) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dog_registrations", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "country"
    t.string   "phone"
    t.string   "second_owner_name"
    t.string   "second_owner_phone"
    t.string   "dog_name"
    t.string   "dog_sex"
    t.string   "dog_breed"
    t.string   "dog_weight"
    t.date     "birthday"
    t.string   "vet"
    t.text     "dog_desription"
    t.text     "dog_daycare_history"
    t.string   "second_dog_name"
    t.string   "second_dog_sex"
    t.string   "second_dog_breed"
    t.string   "second_dog_weight"
    t.date     "second_dog_birthday"
    t.text     "second_dog_description"
    t.text     "comments"
    t.string   "origin"
    t.string   "referral"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_dog_registrations_on_user_id", using: :btree
  end

  create_table "first_names", force: :cascade do |t|
    t.string   "last_name"
    t.string   "phone"
    t.string   "email"
    t.text     "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.text     "address"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
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
    t.boolean  "admin"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
