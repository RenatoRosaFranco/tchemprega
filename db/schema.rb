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

ActiveRecord::Schema.define(version: 2022_03_13_013250) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "alerts", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.boolean "capital"
    t.integer "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.index ["state_id"], name: "index_cities_on_state_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "slug"
    t.string "document"
    t.string "avatar"
    t.datetime "deleted_at"
    t.string "location"
    t.string "website"
    t.text "about"
    t.string "phone"
    t.integer "state_id"
    t.integer "city_id"
    t.string "facebook"
    t.string "instagram"
    t.string "twitter"
    t.string "linkedin"
    t.index ["city_id"], name: "index_companies_on_city_id"
    t.index ["deleted_at"], name: "index_companies_on_deleted_at"
    t.index ["email"], name: "index_companies_on_email", unique: true
    t.index ["reset_password_token"], name: "index_companies_on_reset_password_token", unique: true
    t.index ["state_id"], name: "index_companies_on_state_id"
  end

  create_table "deficiencies", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hiring_types", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "apply_path"
    t.integer "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.date "expiration_date"
    t.string "location"
    t.integer "status"
    t.integer "occupation_area_id"
    t.integer "state_id"
    t.integer "city_id"
    t.integer "modality_id"
    t.integer "hiring_type_id"
    t.integer "period_id"
    t.integer "salary_id"
    t.integer "deficiency_id"
    t.index ["city_id"], name: "index_jobs_on_city_id"
    t.index ["company_id"], name: "index_jobs_on_company_id"
    t.index ["deficiency_id"], name: "index_jobs_on_deficiency_id"
    t.index ["hiring_type_id"], name: "index_jobs_on_hiring_type_id"
    t.index ["modality_id"], name: "index_jobs_on_modality_id"
    t.index ["occupation_area_id"], name: "index_jobs_on_occupation_area_id"
    t.index ["period_id"], name: "index_jobs_on_period_id"
    t.index ["salary_id"], name: "index_jobs_on_salary_id"
    t.index ["state_id"], name: "index_jobs_on_state_id"
  end

  create_table "media", force: :cascade do |t|
    t.string "logo"
    t.string "name"
    t.string "external_link"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "modalities", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "occupation_areas", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "partners", force: :cascade do |t|
    t.string "logo"
    t.string "name"
    t.integer "status"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "periods", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
  end

  create_table "salaries", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.string "acronym"
    t.integer "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.index ["region_id"], name: "index_states_on_region_id"
  end

  create_table "testimonials", force: :cascade do |t|
    t.string "avatar"
    t.string "name"
    t.string "occupation"
    t.text "content"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "slug"
    t.datetime "deleted_at"
    t.string "document"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
