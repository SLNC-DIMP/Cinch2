class CreateExcelMetadatas < ActiveRecord::Migration
  def self.up
    create_table :excel_metadatas do |t|
      t.string :app_name, :limit => 50
      t.string :app_version, :limit => 50
      t.string :author, :limit => 255
      t.string :company, :limit => 255
      t.string :content_type, :limit => 100
      t.string :creationdate, :limit => 50
      t.string :last_author, :limit => 255
      t.string :last_modified, :limit => 255
      t.string :creator, :limit => 255
      t.string :date_create, :limit => 255
      t.string :protected, :limit => 25
      t.string :publisher, :limit => 255
      t.string :resourcename, :limit => 255
      t.string :title, :limit => 255
      t.string :possible_doc_title, :limit => 255
      t.string :possible_doc_keywords, :limit => 255
      t.integer :file_id, :limit => 12
      t.integer :user_id, :limit => 7

      t.timestamps
    end
  end

  def self.down
    drop_table :excel_metadatas
  end
end
