class CreateTextMetadatas < ActiveRecord::Migration
  def self.up
    create_table :text_metadatas do |t|
      t.string :content_encoding, :limit => 50
      t.string :file_size, :limit => 12
      t.string :file_name, :limit => 1024
      t.string :possible_doc_title, :limit => 255
      t.string :possible_doc_keywords, :limit => 255
      t.integer :file_id, :limit => 12
      t.integer :user_id, :limit => 7

      t.timestamps
    end
  end

  def self.down
    drop_table :text_metadatas
  end
end
