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

ActiveRecord::Schema.define(:version => 20120820174356) do

  create_table "crawls", :force => true do |t|
    t.string   "url",        :limit => 1024
    t.integer  "pdfa",                       :default => 0
    t.integer  "jpeg2000",                   :default => 0
    t.integer  "processed",                  :default => 0
    t.integer  "user_id",    :limit => 8
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  create_table "csv_meta_paths", :force => true do |t|
    t.integer  "user_id",    :limit => 8
    t.string   "path"
    t.integer  "zipped"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "delayed_jobs", :force => true do |t|
    t.integer  "priority",   :default => 0
    t.integer  "attempts",   :default => 0
    t.text     "handler"
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "delayed_jobs", ["priority", "run_at"], :name => "delayed_jobs_priority"

  create_table "error_types", :force => true do |t|
    t.string   "error_message"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "event_lists", :force => true do |t|
    t.string   "event_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "excel_metadatas", :force => true do |t|
    t.string   "app_name",              :limit => 50
    t.string   "app_version",           :limit => 50
    t.string   "author"
    t.string   "company"
    t.string   "content_type",          :limit => 100
    t.string   "creationdate",          :limit => 50
    t.string   "last_author"
    t.string   "last_modified"
    t.string   "creator"
    t.string   "date_create"
    t.string   "protected",             :limit => 25
    t.string   "publisher"
    t.string   "resourcename"
    t.string   "title"
    t.string   "possible_doc_title"
    t.string   "possible_doc_keywords"
    t.integer  "file_id"
    t.integer  "user_id",               :limit => 8
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
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

  create_table "gif_metadatas", :force => true do |t|
    t.string   "black_is_zero",                     :limit => 10
    t.string   "color_space_type",                  :limit => 25
    t.integer  "num_channels"
    t.string   "compression_type",                  :limit => 25
    t.string   "lossless_compression",              :limit => 10
    t.integer  "compression_num_progressive_scans"
    t.integer  "file_size"
    t.string   "data_sample_format",                :limit => 25
    t.integer  "horizontal_pixel_offset",           :limit => 8
    t.string   "orientation",                       :limit => 25
    t.integer  "vertical_pixel_offset",             :limit => 8
    t.string   "graphic_control_extension",         :limit => 500
    t.string   "image_descriptor",                  :limit => 300
    t.integer  "height",                            :limit => 8
    t.string   "file_name",                         :limit => 1024
    t.integer  "width",                             :limit => 8
    t.integer  "file_id"
    t.integer  "user_id",                           :limit => 8
    t.datetime "created_at",                                        :null => false
    t.datetime "updated_at",                                        :null => false
  end

  create_table "jpg_metadatas", :force => true do |t|
    t.string   "author"
    t.string   "color_space",          :limit => 25
    t.string   "component_one",        :limit => 150
    t.string   "component_two",        :limit => 150
    t.string   "component_three",      :limit => 150
    t.string   "compression",          :limit => 25
    t.string   "content_type",         :limit => 50
    t.string   "data_precision",       :limit => 15
    t.string   "date_time",            :limit => 50
    t.string   "exif_image_height",    :limit => 25
    t.string   "exif_image_width",     :limit => 25
    t.string   "last_modified",        :limit => 50
    t.string   "number_of_components", :limit => 5
    t.string   "orientation",          :limit => 75
    t.string   "software",             :limit => 75
    t.string   "x_resolution",         :limit => 50
    t.string   "y_resolution",         :limit => 50
    t.string   "resourcename"
    t.integer  "file_id"
    t.integer  "user_id",              :limit => 8
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
  end

  create_table "pdf_metadatas", :force => true do |t|
    t.string   "author",                :limit => 250
    t.string   "creation_date",         :limit => 30
    t.string   "last_modified",         :limit => 30
    t.string   "creator",               :limit => 250
    t.string   "producer",              :limit => 250
    t.string   "resource_name",         :limit => 250
    t.string   "title",                 :limit => 500
    t.integer  "pages",                 :limit => 8
    t.string   "subject",               :limit => 250
    t.string   "keywords",              :limit => 500
    t.string   "licensed_to",           :limit => 250
    t.string   "possible_doc_title"
    t.string   "possible_doc_keywords"
    t.integer  "file_id"
    t.integer  "user_id",               :limit => 8
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
  end

  create_table "png_metadatas", :force => true do |t|
    t.string   "black_is_zero",                     :limit => 10
    t.string   "color_space_type",                  :limit => 25
    t.integer  "num_channels"
    t.string   "compression_type",                  :limit => 25
    t.string   "lossless_compression",              :limit => 10
    t.integer  "compression_num_progressive_scans"
    t.string   "file_size",                         :limit => 10
    t.string   "bits_per_sample",                   :limit => 25
    t.string   "planar_configuration",              :limit => 50
    t.string   "data_sample_format",                :limit => 50
    t.string   "orientation",                       :limit => 25
    t.string   "pixel_aspect_ratio",                :limit => 25
    t.string   "vertical_pixel_size",               :limit => 25
    t.string   "horizontal_pixel_size",             :limit => 25
    t.string   "ihdr",                              :limit => 500
    t.string   "text_entry",                        :limit => 500
    t.string   "transparency_alpha",                :limit => 50
    t.integer  "height",                            :limit => 8
    t.string   "phys"
    t.string   "file_name",                         :limit => 1024
    t.integer  "width",                             :limit => 8
    t.integer  "file_id"
    t.integer  "user_id",                           :limit => 8
    t.datetime "created_at",                                        :null => false
    t.datetime "updated_at",                                        :null => false
  end

  create_table "ppt_metadatas", :force => true do |t|
    t.string   "app_name",              :limit => 50
    t.string   "app_version",           :limit => 50
    t.string   "author"
    t.string   "comments",              :limit => 500
    t.string   "content_type",          :limit => 100
    t.string   "creationdate"
    t.string   "last_author"
    t.string   "last_modified"
    t.string   "last_save_date"
    t.string   "keywords"
    t.integer  "slide_count"
    t.string   "template",              :limit => 50
    t.string   "publisher"
    t.string   "resource_name"
    t.string   "subject"
    t.string   "title"
    t.integer  "pages",                 :limit => 8
    t.string   "possible_doc_title"
    t.string   "possible_doc_keywords"
    t.integer  "file_id"
    t.integer  "user_id",               :limit => 8
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
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
    t.string   "path",       :limit => 250
    t.integer  "pdfa",                      :default => 0
    t.integer  "jpeg2000",                  :default => 0
    t.integer  "processed",                 :default => 0
    t.integer  "user_id",    :limit => 8
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
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
    t.string   "username"
    t.string   "role"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "versions", :force => true do |t|
    t.string   "item_type",  :null => false
    t.integer  "item_id",    :null => false
    t.string   "event",      :null => false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
  end

  add_index "versions", ["item_type", "item_id"], :name => "index_versions_on_item_type_and_item_id"

  create_table "word_metadatas", :force => true do |t|
    t.string   "app_name",              :limit => 50
    t.string   "app_version",           :limit => 50
    t.string   "author"
    t.string   "comments"
    t.string   "company"
    t.string   "content_type",          :limit => 100
    t.string   "creationdate",          :limit => 50
    t.string   "keywords"
    t.string   "last_author"
    t.string   "last_modified"
    t.integer  "pages",                 :limit => 8
    t.integer  "revision_number"
    t.string   "template",              :limit => 50
    t.string   "creator"
    t.string   "date_create"
    t.string   "publisher"
    t.string   "resourcename"
    t.string   "subject"
    t.string   "title"
    t.string   "possible_doc_title"
    t.string   "possible_doc_keywords"
    t.integer  "file_id"
    t.integer  "user_id",               :limit => 8
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
  end

  create_table "zip_gz_downloads", :force => true do |t|
    t.integer  "user_id",           :limit => 8
    t.string   "path",              :limit => 500
    t.integer  "downloaded",                       :default => 0
    t.integer  "deletion_reminder",                :default => 0
    t.datetime "created_at",                                      :null => false
    t.datetime "updated_at",                                      :null => false
  end

end
