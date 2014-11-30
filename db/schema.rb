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

ActiveRecord::Schema.define(version: 20141130112227) do

  create_table "answers", force: true do |t|
    t.integer  "answer_id"
    t.integer  "q_response_id"
    t.integer  "creator_id"
    t.integer  "response_score"
    t.text     "content"
    t.datetime "timestamp"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hackers", force: true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "score"
    t.integer  "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", force: true do |t|
    t.integer  "message_id"
    t.integer  "sender_id"
    t.integer  "receiver_id"
    t.string   "title"
    t.text     "content"
    t.datetime "timestamp"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "question2s", force: true do |t|
    t.integer  "question_id"
    t.integer  "creator_id"
    t.string   "title"
    t.text     "content"
    t.integer  "category"
    t.boolean  "answer"
    t.datetime "timestamp"
    t.string   "closingcommnet"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: true do |t|
    t.integer  "question_id"
    t.integer  "creator_id"
    t.string   "title"
    t.text     "content"
    t.integer  "category"
    t.boolean  "answered"
    t.string   "closing_comment"
    t.datetime "timestamp"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "responses", force: true do |t|
    t.integer  "response_id"
    t.integer  "q_response_id"
    t.integer  "r_response_id"
    t.integer  "creator_id"
    t.integer  "response_score"
    t.text     "content"
    t.datetime "timestamp"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.integer  "user_id"
    t.string   "username"
    t.string   "password"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "score"
    t.integer  "type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

end
