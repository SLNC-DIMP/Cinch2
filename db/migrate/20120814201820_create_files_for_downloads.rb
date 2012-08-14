class CreateFilesForDownloads < ActiveRecord::Migration
  def self.up
    create_table :files_for_downloads do |t|
      t.string :url, :limit => 1024
      t.integer :user_uploads_id, :limit => 7
      t.integer :user_id, :limit => 6
      t.integer :processed, :default => 0

      t.timestamps
    end
  end

  def self.down
    drop_table :files_for_downloads
  end
end
