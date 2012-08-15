class CreateGifMetadatas < ActiveRecord::Migration
  def self.up
    create_table :gif_metadatas do |t|
      t.string :black_is_zero, :limit => 10
      t.string :color_space_type, :limit => 25
      t.integer :num_channels, :limit => 4
      t.string :compression_type, :limit => 25
      t.string :lossless_compression, :limit => 10
      t.integer :compression_num_progressive_scans, :limit => 25
      t.integer :file_size, :limit => 10
      t.string :data_sample_format, :limit => 25
      t.integer :horizontal_pixel_offset, :limit => 5
      t.string :orientation, :limit => 25
      t.integer :vertical_pixel_offset, :limit => 5
      t.string :graphic_control_extension, :limit => 500
      t.string :image_descriptor, :limit => 300
      t.integer :height, :limit => 5
      t.string :file_name, :limit => 1024
      t.integer :width, :limit => 5
      t.integer :file_id, :limit => 12
      t.integer :user_id, :limit => 6

      t.timestamps
    end
  end

  def self.down
    drop_table :gif_metadatas
  end
end
