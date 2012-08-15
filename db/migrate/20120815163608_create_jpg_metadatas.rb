class CreateJpgMetadatas < ActiveRecord::Migration
  def self.up
    create_table :jpg_metadatas do |t|
      t.string :author, :limit => 255
      t.string :color_space,:limit => 25
      t.string :component_one, :limit => 150
      t.string :component_two, :limit => 150
      t.string :component_three, :limit => 150
      t.string :compression, :limit => 25
      t.string :content_type, :limit => 50
      t.string :data_precision, :limit => 15
      t.string :date_time, :limit => 50
      t.string :exif_image_height, :limit => 25
      t.string :exif_image_width, :limit => 25
      t.string :last_modified, :limit => 50
      t.string :number_of_components, :limit => 5
      t.string :orientation, :limit => 75
      t.string :software, :limit => 75
      t.string :x_resolution, :limit => 50
      t.string :y_resolution, :limit => 50
      t.string :resourcename, :limit => 255
      t.integer :file_id, :limit => 12
      t.integer :user_id, :limit => 7

      t.timestamps
    end
  end

  def self.down
    drop_table :jpg_metadatas
  end
end
