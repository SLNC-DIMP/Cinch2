class CreateCsvMetaPaths < ActiveRecord::Migration
  def self.up
    create_table :csv_meta_paths do |t|
      t.integer :user_id, :limit => 7
      t.string :path, :limit => 255
      t.integer :zipped

      t.timestamps
    end
  end

  def self.down
    drop_table :csv_meta_paths
  end
end
