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

ActiveRecord::Schema.define(:version => 20120814202712) do

  create_table "crawls", :force => true do |t|
    t.string   "url"
    t.integer  "pdfa"
    t.integer  "jpeg2000"
    t.integer  "processed"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "csv_meta_paths", :force => true do |t|
    t.integer  "user_id",    :limit => 8
    t.string   "path"
    t.integer  "zipped"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "error_types", :force => true do |t|
    t.string   "error_message"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "file_event_histories", :force => true do |t|
    t.integer  "file_id"
    t.integer  "event_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "file_infos", :force => true do |t|
    t.string   "org_file_path",      :limit => 2084
    t.string   "temp_file_path",     :limit => 1000
    t.integer  "file_type_id",       :limit => 1,    :default => 0
    t.integer  "checksum_run",       :limit => 1,    :default => 0
    t.string   "remote_checksum",    :limit => 40
    t.string   "checksum",           :limit => 40
    t.integer  "virus_check",        :limit => 1,    :default => 0
    t.integer  "fulltext_available", :limit => 1,    :default => 0
    t.integer  "metadata",           :limit => 1,    :default => 0
    t.integer  "dynamic_file",       :limit => 1,    :default => 0
    t.string   "last_modified",      :limit => 15
    t.integer  "zipped",             :limit => 1,    :default => 0
    t.integer  "problem_file",       :limit => 1,    :default => 0
    t.integer  "events_frozen",      :limit => 1,    :default => 0
    t.integer  "expired_deleted",    :limit => 1,    :default => 0
    t.integer  "user_id",            :limit => 1,    :default => 0
    t.integer  "upload_file_id",     :limit => 1,    :default => 0
    t.datetime "created_at",                                        :null => false
    t.datetime "updated_at",                                        :null => false
  end

  create_table "file_types", :force => true do |t|
    t.string   "file_type"
    t.string   "file_type_name"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "files_for_downloads", :force => true do |t|
    t.string   "url",             :limit => 1024
    t.integer  "user_uploads_id", :limit => 8
    t.integer  "user_id",         :limit => 8
    t.integer  "processed",                       :default => 0
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
  end

  create_table "problem_files", :force => true do |t|
    t.integer  "error_id",   :limit => 3
    t.integer  "file_id"
    t.integer  "csv_added",               :default => 0
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  create_table "rails_admin_histories", :force => true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 8
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_rails_admin_histories"

  create_table "simple_captcha_data", :force => true do |t|
    t.string   "key",        :limit => 40
    t.string   "value",      :limit => 6
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  add_index "simple_captcha_data", ["key"], :name => "idx_key"

  create_table "text_metadatas", :force => true do |t|
    t.string   "content_encoding",      :limit => 50
    t.string   "file_size",             :limit => 12
    t.string   "file_name",             :limit => 1024
    t.string   "possible_doc_title"
    t.string   "possible_doc_keywords"
    t.integer  "file_id"
    t.integer  "user_id",               :limit => 8
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
  end

  create_table "uploads", :force => true do |t|
    t.string   "path"
    t.integer  "pdfa"
    t.integer  "jpeg2000"
    t.integer  "processed"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
