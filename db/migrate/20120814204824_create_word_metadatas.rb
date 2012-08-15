class CreateWordMetadatas < ActiveRecord::Migration
  def self.up
    create_table :word_metadatas do |t|
      t.string :app_name, :limit => 50
      t.string :app_version, :limit => 50
      t.string :author, :limit => 255
      t.string :comments, :limit => 255
      t.string :company, :limit => 255
      t.string :content_type, :limit => 100
      t.string :creationdate, :limit => 50
      t.string :keywords, :limit => 255
      t.string :last_author, :limit => 255
      t.string :last_modified, :limit => 255
      t.integer :pages, :limit => 5
      t.integer :revision_number, :limit => 4
      t.string :template, :limit => 50
      t.string :creator, :limit => 255
      t.string :date_create, :limit => 255
      t.string :publisher, :limit => 255
      t.string :resourcename, :limit => 255
      t.string :subject, :limit => 255
      t.string :title, :limit => 255
      t.string :possible_doc_title, :limit => 255
      t.string :possible_doc_keywords, :limit => 255
      t.integer :file_id, :limit => 12
      t.integer :user_id, :limit => 7

      t.timestamps
    end
  end

  def self.down
    drop_table :word_metadatas
  end
end
