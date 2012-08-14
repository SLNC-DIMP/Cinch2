class CreateErrorTypes < ActiveRecord::Migration
  def self.up
    create_table :error_types do |t|
      t.string :error_message

      t.timestamps
    end

    ErrorTypes.create :error_message => "Unable to download file"
    ErrorTypes.create :error_message => "Could not create checksum"
    ErrorTypes.create :error_message => "Duplicate Checksum"
    ErrorTypes.create :error_message => "Unable to extract file metadata"
    ErrorTypes.create :error_message => "Corrupt File. Checksum mismatch"
    ErrorTypes.create :error_message => "Filtered URL. File not downloaded"
    ErrorTypes.create :error_message => "Unable to add file to Zip download"
    ErrorTypes.create :error_message => "Invalid url string.  File could not be downloaded"
    ErrorTypes.create :error_message => "Unknown error"
    ErrorTypes.create :error_message => "No Error"
    ErrorTypes.create :error_message => "Virus detected"
    ErrorTypes.create :error_message => "Unsupported file type"
    ErrorTypes.create :error_message => "Unable to move file"
    ErrorTypes.create :error_message => "Unable to delete file"
    ErrorTypes.create :error_message => "Unable to determine full text status"
    ErrorTypes.create :error_message => "Virus check couldn't scan file"
    ErrorTypes.create :error_message => "Duplicate Filename"
    ErrorTypes.create :error_message => "file media-type doesn't match file extension"
  end

  def self.down
    drop_table :error_types
  end
end
