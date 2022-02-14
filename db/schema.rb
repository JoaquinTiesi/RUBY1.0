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

ActiveRecord::Schema[7.0].define(version: 2022_02_14_191816) do
  create_table "autos", force: :cascade do |t|
    t.string "patente"
    t.integer "persona_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["persona_id"], name: "index_autos_on_persona_id"
  end

  create_table "casa_personas", force: :cascade do |t|
    t.integer "persona_id", null: false
    t.integer "casa_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["casa_id"], name: "index_casa_personas_on_casa_id"
    t.index ["persona_id"], name: "index_casa_personas_on_persona_id"
  end

  create_table "casas", force: :cascade do |t|
    t.string "domicilio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "personas", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.integer "dni"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "autos", "personas"
  add_foreign_key "casa_personas", "casas"
  add_foreign_key "casa_personas", "personas"
end
