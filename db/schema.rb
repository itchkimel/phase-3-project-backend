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

ActiveRecord::Schema.define(version: 2021_06_02_190411) do

  create_table "carts", force: :cascade do |t|
    t.integer "guitar_id"
    t.integer "customer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "email"
  end

  create_table "guitars", force: :cascade do |t|
    t.string "brand"
    t.integer "price"
    t.string "material"
    t.string "color"
    t.boolean "left_handed"
    t.string "image"
    t.string "model"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "guitar_id"
    t.integer "customer_id"
  end

end
