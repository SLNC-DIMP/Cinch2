class CreateEventLists < ActiveRecord::Migration
  def self.up
    create_table :event_lists do |t|
      t.string :event_name

      t.timestamps
    end

    EventLists.create :event_name => "Downloaded"
    EventLists.create :event_name => "Renamed"
    EventLists.create :event_name => "Download Last Modified time corrected"
    EventLists.create :event_name => "Virus check"
    EventLists.create :event_name => "Local checksum creation"
    EventLists.create :event_name => "Deleted - virus detected"
    EventLists.create :event_name => "Metadata Extraction"
    EventLists.create :event_name => "Zipped for download"
    EventLists.create :event_name => "Deleted - expired"
    EventLists.create :event_name => "File integrity check"
    EventLists.create :event_name => "Full text check"
    EventLists.create :event_name => "Download failed"
    EventLists.create :event_name => "Remote checksum creation"
  end

  def self.down
    drop_table :event_lists
  end
end
