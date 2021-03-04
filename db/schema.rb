# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  create_table "articles", id: { type: :integer, unsigned: true }, charset: "latin1", force: :cascade do |t|
    t.string "title", limit: 50
    t.text "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", id: { type: :integer, unsigned: true }, charset: "latin1", force: :cascade do |t|
    t.integer "article_id", null: false, unsigned: true
    t.string "commenter", limit: 50
    t.text "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["article_id"], name: "article_id"
  end

  create_table "users", id: { type: :integer, unsigned: true }, charset: "latin1", force: :cascade do |t|
    t.string "username", limit: 50
    t.text "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "comments", "articles", name: "comments_ibfk_1"
end
