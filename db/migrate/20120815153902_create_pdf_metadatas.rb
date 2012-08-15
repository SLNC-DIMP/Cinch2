class CreatePdfMetadatas < ActiveRecord::Migration
  def self.up
    create_table :pdf_metadatas do |t|
      t.string :author, :limit => 250
      t.string :creation_date, :limit => 30
      t.string :last_modified, :limit => 30
      t.string :creator, :limit => 250
      t.string :producer, :limit => 250
      t.string :resource_name, :limit => 250
      t.string :title, :limit => 500
      t.integer :pages, :limit => 5
      t.string :subject, :limit => 250
      t.string :keywords, :limit => 500
      t.string :licensed_to, :limit => 250
      t.string :possible_doc_title, :limit => 255
      t.string :possible_doc_keywords, :limit => 255
      t.integer :file_id, :limit => 10
      t.integer :user_id, :limit => 6

      t.timestamps
    end
  end

  def self.down
    drop_table :pdf_metadatas
  end
end
