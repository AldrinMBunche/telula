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

ActiveRecord::Schema.define(version: 20180810130516) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assessments", force: :cascade do |t|
    t.integer  "assessment_id"
    t.integer  "training_id"
    t.integer  "trainer_id"
    t.integer  "unit_id"
    t.integer  "learner_id"
    t.date     "assess_date"
    t.string   "poe"
    t.string   "rpl"
    t.string   "results"
    t.string   "moderated"
    t.string   "attended"
    t.string   "formative_results"
    t.integer  "formative_attempts"
    t.string   "summative_results"
    t.integer  "summative_attempts"
    t.string   "poe_not_submit_reason"
    t.string   "reason_not_completed"
    t.string   "assesor_recommendations"
    t.string   "mentor_notes"
    t.string   "moderated_ext"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "clients", force: :cascade do |t|
    t.integer  "client_id"
    t.integer  "company_id"
    t.string   "type"
    t.string   "name"
    t.string   "business_reg_no"
    t.integer  "tel_no"
    t.integer  "fax_no"
    t.string   "account_no"
    t.string   "r_address_line_1"
    t.string   "r_address_line_2"
    t.string   "r_suburb"
    t.string   "r_city"
    t.string   "r_province"
    t.integer  "r_postal_code"
    t.string   "r_country"
    t.string   "p_address_line_1"
    t.string   "p_address_line_2"
    t.string   "p_suburb"
    t.string   "p_city"
    t.string   "p_province"
    t.integer  "p_postal_code"
    t.string   "p_country"
    t.integer  "client_branch"
    t.string   "sales_person"
    t.string   "branch_id"
    t.string   "sdl_number"
    t.string   "contact_name"
    t.string   "main_email"
    t.string   "wdyhau"
    t.integer  "credit_limit"
    t.string   "payment_term"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "learner_events", force: :cascade do |t|
    t.integer  "TRAINING_ID"
    t.integer  "LEARNER_ID"
    t.integer  "AGREEMENT_NO"
    t.date     "AGREEMENT_ON"
    t.integer  "REGISTRATION_NO"
    t.integer  "CERTIFICATE_NO"
    t.date     "CERTIFICATE_ON"
    t.integer  "BATCH_NO"
    t.string   "MACHINE_RESTRICTION"
    t.text     "CERTIFICATE_ISSUED"
    t.text     "CERTIFICATE_ISSUED_BY"
    t.integer  "OLD_BATCH_NO"
    t.date     "CANCELATION_ON"
    t.date     "TRADE_TEST_ON"
    t.string   "CERTIFICATE_NOTES"
    t.text     "MED"
    t.text     "HQ"
    t.text     "EYE"
    t.text     "PRDP"
    t.text     "LOG"
    t.text     "PRI_OR"
    t.text     "ID_DOC"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "learners", force: :cascade do |t|
    t.integer  "learner_id"
    t.integer  "client_id"
    t.string   "id_type"
    t.integer  "id_number"
    t.string   "passport_number"
    t.string   "date_of_birth"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_names"
    t.string   "title"
    t.string   "equity"
    t.string   "gender"
    t.string   "nationality"
    t.string   "citizen_status"
    t.string   "disability_status"
    t.string   "home_language"
    t.string   "organising_framework_occupations"
    t.string   "socioeconomic_status"
    t.string   "no_education"
    t.integer  "highest_school_grade"
    t.string   "abet"
    t.string   "tertiary_qualification"
    t.string   "license_code"
    t.integer  "cellphone_number"
    t.string   "email_address"
    t.string   "next_of_kin_name"
    t.string   "next_of_kin_contact_no"
    t.string   "guardian_name"
    t.integer  "guardian_contact_no"
    t.string   "storage_cabinet_no"
    t.date     "disposal_date"
    t.string   "r_address_line_1"
    t.string   "r_address_line_2"
    t.string   "r_suburb"
    t.string   "r_city"
    t.string   "r_province"
    t.integer  "r_postal_code"
    t.string   "r_country"
    t.string   "p_address_line_1"
    t.string   "address_line_2"
    t.string   "p_suburb"
    t.string   "p_city"
    t.string   "p_province"
    t.integer  "p_postal_code"
    t.string   "p_country"
    t.string   "municipality"
    t.string   "urban_rural"
    t.text     "photo"
    t.string   "photo_name"
    t.string   "notes"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "moderations", force: :cascade do |t|
    t.integer  "moderation_id"
    t.integer  "training_id"
    t.integer  "trainer_id"
    t.integer  "unit_id"
    t.string   "internal_by"
    t.datetime "internal_on"
    t.string   "internal_outcome"
    t.string   "internal_recommendation"
    t.string   "external_by"
    t.datetime "external_on"
    t.string   "external_outcome"
    t.string   "external_recommendation"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "qualifications", force: :cascade do |t|
    t.integer  "qualification_id"
    t.string   "saqa_aligned"
    t.string   "is_single_unit"
    t.integer  "code"
    t.string   "title"
    t.string   "display_name"
    t.integer  "nqf_level"
    t.integer  "credits"
    t.string   "accredited"
    t.date     "accredited_start_on"
    t.date     "accredited_end_on"
    t.date     "saqa_reg_start_on"
    t.date     "saqa_reg_end_on"
    t.boolean  "can_expire"
    t.integer  "valid_months"
    t.string   "use_assessor"
    t.string   "use_learnership_fields"
    t.string   "use_training_planner"
    t.string   "use_machine_attributes"
    t.string   "use_logbook_fields"
    t.integer  "certificate_template_id"
    t.string   "status"
    t.string   "created_by"
    t.datetime "created_on"
    t.string   "qualification_type"
    t.date     "saqa_enroll_end_on"
    t.string   "use_formative_summative"
    t.string   "use_apprenticeship_fields"
    t.string   "artisan_trade"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "trainers", force: :cascade do |t|
    t.integer  "trainer_id"
    t.integer  "client_id"
    t.string   "first_name"
    t.string   "middle_names"
    t.string   "last_name"
    t.string   "id_number"
    t.datetime "date_of_birth"
    t.string   "status"
    t.string   "created_by"
    t.datetime "created_on"
    t.string   "type"
    t.integer  "contact_no"
    t.string   "staff_rate_type"
    t.integer  "staff_rate"
    t.string   "status_reason"
    t.string   "notes"
    t.string   "id_type"
    t.string   "training_speciality_area"
    t.string   "email_address"
    t.string   "licence_code"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "trainings", force: :cascade do |t|
    t.integer  "training_id"
    t.integer  "client_id"
    t.integer  "branch_id"
    t.integer  "qualification_id"
    t.string   "training_status"
    t.integer  "number_of_learners"
    t.string   "re_certification"
    t.string   "event_type"
    t.string   "assessment_method"
    t.string   "internal"
    t.datetime "start_on"
    t.datetime "end_on"
    t.string   "venue"
    t.date     "cert_valid_from"
    t.date     "cert_valid_to"
    t.string   "remind_expiry"
    t.string   "machine_code"
    t.string   "machine_attachment"
    t.string   "machine_capacity"
    t.string   "learnership_branch"
    t.string   "learnership_site"
    t.string   "notes"
    t.string   "qa"
    t.integer  "duration"
    t.date     "ls_start_on"
    t.date     "ls_end_on"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

end
