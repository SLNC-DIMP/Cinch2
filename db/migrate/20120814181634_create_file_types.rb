class CreateFileTypes < ActiveRecord::Migration
  def self.up
    create_table :file_types do |t|
      t.string :file_type
      t.string :file_type_name

      t.timestamps
    end

    FileTypes.create :file_type => "application/pdf", :file_type_name => "PDF"
    FileTypes.create :file_type => "application/msword", :file_type_name => "DOC"
    FileTypes.create :file_type => "application/vnd.openxmlformats-officedocument.wordprocessingml.document",
                     :file_type_name => "DOCX"
    FileTypes.create :file_type => "image/tiff", :file_type_name => "TIFF"
    FileTypes.create :file_type => "image/jpeg", :file_type_name => "JPEG"
    FileTypes.create :file_type => "image/gif", :file_type_name => "GIF"
    FileTypes.create :file_type => "text/plain", :file_type_name => "TXT"
    FileTypes.create :file_type => "application/vnd.ms-excel", :file_type_name => "XLS"
    FileTypes.create :file_type => "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
                     :file_type_name => "XLSX"
    FileTypes.create :file_type => "image/png", :file_type_name => "PNG"
    FileTypes.create :file_type => "application/vnd.ms-powerpoint", :file_type_name => "PPT"
    FileTypes.create :file_type => "application/vnd.openxmlformats-officedocument.presentationml.presentation",
                     :file_type_name => "PPTX"
  end

  def self.down
    drop_table :file_types
  end
end
