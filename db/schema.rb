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

ActiveRecord::Schema[7.0].define(version: 2022_02_21_181423) do
  create_table "abilities", force: :cascade do |t|
    t.string "name"
    t.integer "usuario_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usuario_id"], name: "index_abilities_on_usuario_id"
  end

  create_table "expertises", force: :cascade do |t|
    t.string "expertise"
    t.integer "usuario_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usuario_id"], name: "index_expertises_on_usuario_id"
  end

  create_table "mentors", force: :cascade do |t|
    t.string "name", null: false
    t.string "surname", null: false
    t.string "email", null: false
    t.integer "telephone"
    t.string "office"
    t.integer "usuario_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usuario_id"], name: "index_mentors_on_usuario_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "place"
    t.integer "usuario_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usuario_id"], name: "index_places_on_usuario_id"
  end

  create_table "socialnetworks", force: :cascade do |t|
    t.string "linkedin"
    t.integer "usuario_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usuario_id"], name: "index_socialnetworks_on_usuario_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "name", null: false
    t.string "surname", null: false
    t.string "email", null: false
    t.integer "telephone"
    t.string "description"
    t.string "office"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "abilities", "usuarios"
  add_foreign_key "expertises", "usuarios"
  add_foreign_key "mentors", "usuarios"
  add_foreign_key "places", "usuarios"
  add_foreign_key "socialnetworks", "usuarios"
end
