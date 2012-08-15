class CreatePptMetadatas < ActiveRecord::Migration
  def self.up
    create_table :ppt_metadatas do |t|
      t.string :app_name, :limit => 50
      t.string :app_version, :limit => 50
      t.string :author, :limit => 255
      t.string :comments, :limit => 500
      t.string :content_type, :limit => 100
      t.string :creationdate, :limit => 255
      t.string :last_author, :limit => 255
      t.string :last_modified, :limit => 255
      t.string :last_save_date, :limit => 255
      t.string :keywords, :limit => 255
      t.integer :slide_count, :limit => 4
      t.string :template, :limit => 50
      t.string :publisher, :limit => 255
      t.string :resource_name, :limit => 255
      t.string :subject, :limit => 255
      t.string :title, :limit => 255
      t.integer :pages, :limit => 5
      t.string :possible_doc_title, :limit => 255
      t.string :possible_doc_keywords, :limit => 255
      t.integer :file_id, :limit => 12
      t.integer :user_id, :limit => 7

      t.timestamps
    end
  end

  def self.down
    drop_table :ppt_metadatas
  end
end
