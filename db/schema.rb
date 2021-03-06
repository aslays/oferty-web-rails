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

ActiveRecord::Schema.define(version: 20150510024052) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categoria", force: :cascade do |t|
    t.string   "categoria"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ciudads", force: :cascade do |t|
    t.string   "ciudad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "oferta", force: :cascade do |t|
    t.string   "titulo"
    t.text     "descripcion"
    t.string   "precio"
    t.string   "forma_pago"
    t.string   "extension"
    t.integer  "usuario_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "ciudad_id"
    t.integer  "categorium_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "email",            null: false
    t.integer  "rol"
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ciudad_id"
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true, using: :btree

  add_foreign_key "oferta", "categoria"
  add_foreign_key "oferta", "ciudads"
end
