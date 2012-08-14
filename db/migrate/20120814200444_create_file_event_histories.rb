class CreateFileEventHistories < ActiveRecord::Migration
  def self.up
    create_table :file_event_histories do |t|
      t.integer :file_id
      t.integer :event_id

      t.timestamps
    end
  end

  def self.down
    drop_table :file_event_histories
  end
end
