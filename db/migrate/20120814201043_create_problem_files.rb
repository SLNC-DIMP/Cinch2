class CreateProblemFiles < ActiveRecord::Migration
  def self.up
    create_table :problem_files do |t|
      t.integer :error_id, :limit => 3
      t.integer :file_id, :limit => 10
      t.integer :csv_added, :default => 0

      t.timestamps
    end
  end

  def self.down
    drop_table :problem_files
  end
end
