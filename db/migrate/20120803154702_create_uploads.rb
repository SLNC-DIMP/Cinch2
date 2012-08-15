class CreateUploads < ActiveRecord::Migration
  def self.up
    create_table :uploads do |t|
      t.string :path, :limit => 250
      t.integer :pdfa, :default => 0
      t.integer :jpeg2000, :default => 0
      t.integer :processed, :default => 0
      t.integer :user_id, :limit => 7

      t.timestamps
    end
  end

  def self.down
    drop_table :uploads
  end
end
