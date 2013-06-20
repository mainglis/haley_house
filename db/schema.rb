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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130612193129) do

  create_table "deadlines", :force => true do |t|
    t.integer  "grant_record_id"
    t.string   "type"
    t.date     "date"
    t.text     "notes"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "donations", :force => true do |t|
    t.integer  "individual_id"
    t.date     "date"
    t.decimal  "amount",        :precision => 10, :scale => 0
    t.string   "method"
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
  end

  create_table "event_attendance_records", :force => true do |t|
    t.integer  "individual_id"
    t.integer  "organization_id"
    t.integer  "event_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "events", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "start_datetime"
    t.datetime "end_datetime"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "grant_records", :force => true do |t|
    t.integer  "grantmaker_id"
    t.integer  "organization_id"
    t.string   "fiscal_year"
    t.date     "notification_date"
    t.string   "ask_status"
    t.string   "request_type"
    t.string   "funding_type"
    t.decimal  "amount",            :precision => 10, :scale => 0
    t.string   "program"
    t.text     "notes"
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
  end

  create_table "grantmakers", :force => true do |t|
    t.string   "name"
    t.integer  "rank"
    t.boolean  "unsolicited_proposals"
    t.text     "mission"
    t.string   "website"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "phone"
    t.string   "email"
    t.string   "contact_first_name"
    t.string   "contact_last_name"
    t.string   "contact_email"
    t.string   "contact_phone_number"
    t.text     "notes"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "individual_organization_records", :force => true do |t|
    t.integer  "individual_id"
    t.integer  "organization_id"
    t.date     "start_date"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "individual_role_records", :force => true do |t|
    t.integer  "individual_id"
    t.integer  "role_id"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "individual_skill_records", :force => true do |t|
    t.integer  "individual_id"
    t.integer  "skill_id"
    t.date     "date_gained"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "individuals", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "salutation"
    t.string   "email"
    t.string   "current_street_address"
    t.string   "current_city"
    t.string   "current_zip"
    t.string   "permanent_street_address"
    t.string   "permanent_city"
    t.string   "permanent_zip"
    t.string   "phone_mobile"
    t.string   "phone_work"
    t.string   "phone_home"
    t.string   "emergency_contact_name"
    t.string   "emergency_contact_street_address"
    t.string   "emergency_contact_city"
    t.string   "emergency_contact_zip"
    t.boolean  "email_newsletter"
    t.boolean  "mail_newsletter"
    t.date     "applied_date"
    t.date     "processed_date"
    t.date     "inactive_date"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  create_table "notes", :force => true do |t|
    t.integer  "individual_id"
    t.string   "note"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "occupations", :force => true do |t|
    t.integer  "individual_id"
    t.string   "sector"
    t.string   "title"
    t.string   "employer_name"
    t.string   "employer_street_address"
    t.string   "employer_city"
    t.string   "employer_zip"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "organization_rosters", :force => true do |t|
    t.integer  "individual_id"
    t.integer  "organization_id"
    t.date     "start_date"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "organizations", :force => true do |t|
    t.string   "name"
    t.text     "mission"
    t.string   "program"
    t.string   "website"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "contact_first_name"
    t.string   "contact_last_name"
    t.string   "contact_phone_number"
    t.string   "contact_email"
  end

  create_table "organizations_rosters", :force => true do |t|
    t.integer  "individual_id"
    t.integer  "organization_id"
    t.date     "start_date"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "role_rosters", :force => true do |t|
    t.integer  "individual_id"
    t.integer  "role_id"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "roles_rosters", :force => true do |t|
    t.integer  "individual_id"
    t.integer  "role_id"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "skill_rosters", :force => true do |t|
    t.integer  "individual_id"
    t.integer  "skill_id"
    t.date     "date_gained"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "skills", :force => true do |t|
    t.string   "name"
    t.string   "level"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "skills_rosters", :force => true do |t|
    t.integer  "individual_id"
    t.integer  "skill_id"
    t.date     "date_gained"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "volunteers", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email_address"
    t.string   "current_street_address"
    t.string   "current_city"
    t.string   "zip_code"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

end
