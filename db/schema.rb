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

ActiveRecord::Schema.define(version: 20170521092408) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string   "article_title"
    t.string   "article_subtitle"
    t.text     "article_content"
    t.date     "article_date"
    t.integer  "section_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "articles", ["section_id"], name: "index_articles_on_section_id", using: :btree

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.string   "data_fingerprint"
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "ckeditor_assets", ["type"], name: "index_ckeditor_assets_on_type", using: :btree

  create_table "myusers", primary_key: "user_id", force: :cascade do |t|
    t.string "user_name",     limit: 15
    t.string "user_password", limit: 20
  end

  create_table "recorridos", force: :cascade do |t|
    t.string   "ruta_name"
    t.text     "ruta_description"
    t.text     "ruta_recorrido"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "rutas", force: :cascade do |t|
    t.integer  "recorrido_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "rutas", ["recorrido_id"], name: "index_rutas_on_recorrido_id", using: :btree

  create_table "sections", force: :cascade do |t|
    t.string "section_name"
    t.text   "section_description"
  end

  add_foreign_key "articles", "sections"
  add_foreign_key "rutas", "recorridos"
end
