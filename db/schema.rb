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

ActiveRecord::Schema.define(version: 20160910072930) do

  create_table "courses", force: :cascade do |t|
    t.text     "content"
    t.text     "imageurl"
    t.text     "videourl"
    t.text     "teacher"
    t.text     "courseinfo"
    t.text     "date"
    t.text     "other"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "xiao_course_id"
    t.integer  "da_course_id"
    t.index ["da_course_id"], name: "index_courses_on_da_course_id"
    t.index ["xiao_course_id"], name: "index_courses_on_xiao_course_id"
  end

  create_table "da_courses", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.text     "imageurl"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_da_courses_on_user_id"
  end

  create_table "microposts", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_courses", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "course_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "da_course_id"
    t.integer  "xiao_course_id"
    t.index ["course_id"], name: "index_user_courses_on_course_id"
    t.index ["da_course_id"], name: "index_user_courses_on_da_course_id"
    t.index ["user_id"], name: "index_user_courses_on_user_id"
    t.index ["xiao_course_id"], name: "index_user_courses_on_xiao_course_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.boolean  "admin"
    t.integer  "playtime"
    t.integer  "buytime"
    t.date     "expiredate"
    t.         "login"
    t.boolean  "logout"
  end

  create_table "xiao_courses", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.integer  "da_course_id"
    t.text     "imageurl"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["da_course_id"], name: "index_xiao_courses_on_da_course_id"
    t.index ["user_id"], name: "index_xiao_courses_on_user_id"
  end

end
