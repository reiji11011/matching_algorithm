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

ActiveRecord::Schema.define(version: 20180615105322) do

  create_table "available_languages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "company_company_sizes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "company_id"
    t.bigint "company_size_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_company_company_sizes_on_company_id"
    t.index ["company_size_id"], name: "index_company_company_sizes_on_company_size_id"
  end

  create_table "company_company_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "company_id"
    t.bigint "company_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_company_company_types_on_company_id"
    t.index ["company_type_id"], name: "index_company_company_types_on_company_type_id"
  end

  create_table "company_industries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "company_id"
    t.bigint "industry_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_company_industries_on_company_id"
    t.index ["industry_id"], name: "index_company_industries_on_industry_id"
  end

  create_table "company_occupations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "company_id"
    t.bigint "occupation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_company_occupations_on_company_id"
    t.index ["occupation_id"], name: "index_company_occupations_on_occupation_id"
  end

  create_table "company_regions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "company_id"
    t.bigint "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_company_regions_on_company_id"
    t.index ["region_id"], name: "index_company_regions_on_region_id"
  end

  create_table "company_sizes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "company_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cultures", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "graduate_years", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "industries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "language_levels", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "major_categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "majors", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "code"
    t.bigint "major_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["major_category_id"], name: "index_majors_on_major_category_id"
  end

  create_table "meets", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "occupations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prefectures", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.bigint "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["region_id"], name: "index_prefectures_on_region_id"
  end

  create_table "regions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "search_jobs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_available_languages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "user_id"
    t.bigint "available_language_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["available_language_id"], name: "index_user_available_languages_on_available_language_id"
    t.index ["user_id"], name: "index_user_available_languages_on_user_id"
  end

  create_table "user_company_sizes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "user_id"
    t.bigint "company_size_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_size_id"], name: "index_user_company_sizes_on_company_size_id"
    t.index ["user_id"], name: "index_user_company_sizes_on_user_id"
  end

  create_table "user_company_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "user_id"
    t.bigint "company_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_type_id"], name: "index_user_company_types_on_company_type_id"
    t.index ["user_id"], name: "index_user_company_types_on_user_id"
  end

  create_table "user_cultures", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "user_id"
    t.bigint "culture_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["culture_id"], name: "index_user_cultures_on_culture_id"
    t.index ["user_id"], name: "index_user_cultures_on_user_id"
  end

  create_table "user_industries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "user_id"
    t.bigint "industry_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["industry_id"], name: "index_user_industries_on_industry_id"
    t.index ["user_id"], name: "index_user_industries_on_user_id"
  end

  create_table "user_language_levels", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "user_id"
    t.bigint "language_level_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["language_level_id"], name: "index_user_language_levels_on_language_level_id"
    t.index ["user_id"], name: "index_user_language_levels_on_user_id"
  end

  create_table "user_occupations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "user_id"
    t.bigint "occupation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["occupation_id"], name: "index_user_occupations_on_occupation_id"
    t.index ["user_id"], name: "index_user_occupations_on_user_id"
  end

  create_table "user_regions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "user_id"
    t.bigint "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["region_id"], name: "index_user_regions_on_region_id"
    t.index ["user_id"], name: "index_user_regions_on_user_id"
  end

  create_table "user_resions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "user_id"
    t.bigint "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["region_id"], name: "index_user_resions_on_region_id"
    t.index ["user_id"], name: "index_user_resions_on_user_id"
  end

  create_table "user_search_jobs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "user_id"
    t.bigint "search_job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["search_job_id"], name: "index_user_search_jobs_on_search_job_id"
    t.index ["user_id"], name: "index_user_search_jobs_on_user_id"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.string "email"
    t.date "birthday"
    t.integer "gender"
    t.string "nationality"
    t.string "phone"
    t.string "university"
    t.string "graduate_year"
    t.string "uid"
    t.string "provider"
    t.text "access_token"
    t.text "description"
    t.text "public_profile_url"
    t.integer "major_id"
    t.integer "major_category_id"
    t.string "visa_type"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "visa_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "company_company_sizes", "companies"
  add_foreign_key "company_company_sizes", "company_sizes"
  add_foreign_key "company_company_types", "companies"
  add_foreign_key "company_company_types", "company_types"
  add_foreign_key "company_industries", "companies"
  add_foreign_key "company_industries", "industries"
  add_foreign_key "company_occupations", "companies"
  add_foreign_key "company_occupations", "occupations"
  add_foreign_key "company_regions", "companies"
  add_foreign_key "company_regions", "regions"
  add_foreign_key "majors", "major_categories"
  add_foreign_key "user_available_languages", "available_languages"
  add_foreign_key "user_available_languages", "users"
  add_foreign_key "user_company_sizes", "company_sizes"
  add_foreign_key "user_company_sizes", "users"
  add_foreign_key "user_company_types", "company_types"
  add_foreign_key "user_company_types", "users"
  add_foreign_key "user_cultures", "cultures"
  add_foreign_key "user_cultures", "users"
  add_foreign_key "user_industries", "industries"
  add_foreign_key "user_industries", "users"
  add_foreign_key "user_language_levels", "language_levels"
  add_foreign_key "user_language_levels", "users"
  add_foreign_key "user_occupations", "occupations"
  add_foreign_key "user_occupations", "users"
  add_foreign_key "user_regions", "regions"
  add_foreign_key "user_regions", "users"
  add_foreign_key "user_resions", "regions"
  add_foreign_key "user_resions", "users"
  add_foreign_key "user_search_jobs", "search_jobs"
  add_foreign_key "user_search_jobs", "users"
end
