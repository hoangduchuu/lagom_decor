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

ActiveRecord::Schema.define(version: 20181223153841) do

  create_table "admins", force: :cascade do |t|
    t.string "username", default: "", null: false
    t.string "phone", default: ""
    t.string "role", default: "", null: false
    t.string "avatar", default: ""
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer "invitation_limit"
    t.string "invited_by_type"
    t.integer "invited_by_id"
    t.integer "invitations_count", default: 0
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["invitation_token"], name: "index_admins_on_invitation_token", unique: true
    t.index ["invitations_count"], name: "index_admins_on_invitations_count"
    t.index ["invited_by_id"], name: "index_admins_on_invited_by_id"
    t.index ["invited_by_type", "invited_by_id"], name: "index_admins_on_invited_by_type_and_invited_by_id"
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "banners", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comment_translations", force: :cascade do |t|
    t.integer "comment_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.text "comment"
    t.index ["comment_id"], name: "index_comment_translations_on_comment_id"
    t.index ["locale"], name: "index_comment_translations_on_locale"
  end

  create_table "comments", force: :cascade do |t|
    t.string "title"
    t.text "comment"
    t.string "edited_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "consulting_translations", force: :cascade do |t|
    t.integer "consulting_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.text "text"
    t.index ["consulting_id"], name: "index_consulting_translations_on_consulting_id"
    t.index ["locale"], name: "index_consulting_translations_on_locale"
  end

  create_table "consultings", force: :cascade do |t|
    t.string "title"
    t.text "text"
    t.string "edited_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contact_translations", force: :cascade do |t|
    t.integer "contact_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address"
    t.text "description"
    t.index ["contact_id"], name: "index_contact_translations_on_contact_id"
    t.index ["locale"], name: "index_contact_translations_on_locale"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "phone"
    t.string "fax"
    t.string "email"
    t.string "address"
    t.string "opendate"
    t.string "closedate"
    t.string "openat"
    t.string "closeat"
    t.string "facebook"
    t.string "twitter"
    t.string "google"
    t.string "description"
    t.string "edited_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "customer_name"
    t.string "phone"
    t.string "email"
    t.text "message"
    t.string "status", default: "false", null: false
    t.string "edited_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "interioridea_categories", force: :cascade do |t|
    t.string "category_name"
    t.string "show"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "interioridea_category_translations", force: :cascade do |t|
    t.integer "interioridea_category_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "show"
    t.index ["interioridea_category_id"], name: "index_7dd1b63676e40fea50cb8b5066060c7afc5681b4"
    t.index ["locale"], name: "index_interioridea_category_translations_on_locale"
  end

  create_table "interioridea_translations", force: :cascade do |t|
    t.integer "interioridea_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "category"
    t.string "title"
    t.string "designer"
    t.text "description"
    t.index ["interioridea_id"], name: "index_interioridea_translations_on_interioridea_id"
    t.index ["locale"], name: "index_interioridea_translations_on_locale"
  end

  create_table "interiorideas", force: :cascade do |t|
    t.string "category"
    t.string "title"
    t.string "designer"
    t.text "description"
    t.text "text"
    t.string "show_on_home"
    t.string "image"
    t.string "image_one"
    t.string "string"
    t.string "image_two"
    t.string "image_three"
    t.string "edited_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "permissions", force: :cascade do |t|
    t.integer "admin_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_categories", force: :cascade do |t|
    t.string "category_name"
    t.string "show"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_category_translations", force: :cascade do |t|
    t.integer "product_category_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "category"
    t.index ["locale"], name: "index_product_category_translations_on_locale"
    t.index ["product_category_id"], name: "index_product_category_translations_on_product_category_id"
  end

  create_table "product_translations", force: :cascade do |t|
    t.integer "product_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "category"
    t.string "product_name"
    t.string "material"
    t.text "description"
    t.index ["locale"], name: "index_product_translations_on_locale"
    t.index ["product_id"], name: "index_product_translations_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "product_number"
    t.string "category"
    t.string "product_name"
    t.string "price"
    t.string "top_rated"
    t.string "avatar"
    t.string "material"
    t.text "description"
    t.string "edited_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_categories", force: :cascade do |t|
    t.string "category_name"
    t.string "show"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_category_translations", force: :cascade do |t|
    t.integer "project_category_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "category"
    t.index ["locale"], name: "index_project_category_translations_on_locale"
    t.index ["project_category_id"], name: "index_project_category_translations_on_project_category_id"
  end

  create_table "project_translations", force: :cascade do |t|
    t.integer "project_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "category"
    t.string "project_name"
    t.string "location"
    t.string "client"
    t.text "description"
    t.text "solution"
    t.index ["locale"], name: "index_project_translations_on_locale"
    t.index ["project_id"], name: "index_project_translations_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "category"
    t.string "project_name"
    t.string "date"
    t.string "location"
    t.string "value"
    t.string "client"
    t.text "description"
    t.text "solution"
    t.string "cover_photo"
    t.string "image_one"
    t.string "image_two"
    t.string "image_three"
    t.string "edited_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_translations", force: :cascade do |t|
    t.integer "service_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title_1"
    t.string "title_2"
    t.text "description"
    t.index ["locale"], name: "index_service_translations_on_locale"
    t.index ["service_id"], name: "index_service_translations_on_service_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "title_1"
    t.string "title_2"
    t.text "description"
    t.string "image"
    t.string "edited_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "video_translations", force: :cascade do |t|
    t.integer "video_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "category"
    t.string "project_name"
    t.string "location"
    t.string "client"
    t.text "description"
    t.text "solution"
    t.index ["locale"], name: "index_video_translations_on_locale"
    t.index ["video_id"], name: "index_video_translations_on_video_id"
  end

  create_table "videos", force: :cascade do |t|
    t.string "category"
    t.string "project_name"
    t.string "date"
    t.string "location"
    t.string "value"
    t.string "client"
    t.text "description"
    t.text "solution"
    t.string "url"
    t.string "edited_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
