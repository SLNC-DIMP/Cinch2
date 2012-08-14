class CreateFileInfos < ActiveRecord::Migration
  def change
    create_table :file_infos do |t|
      t.string  :org_file_path, :limit => 2084
      t.string  :temp_file_path, :limit => 1000
      t.integer :file_type_id, :default => 0, :limit => 1
      t.integer :checksum_run, :default => 0, :limit => 1
      t.string  :remote_checksum, :limit => 40
      t.string  :checksum, :limit => 40
      t.integer :virus_check, :default => 0, :limit => 1
      t.integer :fulltext_available, :default => 0, :limit => 1
      t.integer :metadata, :default => 0, :limit => 1
      t.integer :dynamic_file, :default => 0, :limit => 1
      t.string  :last_modified, :limit => 15
      t.integer :zipped, :default => 0, :limit => 1
      t.integer :problem_file, :default => 0, :limit => 1
      t.integer :events_frozen, :default => 0, :limit => 1
      t.integer :expired_deleted, :default => 0, :limit => 1
      t.integer :user_id, :default => 0, :limit => 1
      t.integer :upload_file_id, :default => 0, :limit => 1

      t.timestamps
    end
  end
end
