class CreateZipGzDownloads < ActiveRecord::Migration
  def self.up
    create_table :zip_gz_downloads do |t|
      t.integer :user_id, :limit => 7
      t.string :path, :limit => 500
      t.integer :downloaded, :default => 0
      t.integer :deletion_reminder, :default => 0

      t.timestamps
    end
  end

  def self.down
    drop_table :zip_gz_downloads
  end
end
