class CreatePngMetadatas < ActiveRecord::Migration
  def self.up
    create_table :png_metadatas do |t|
      t.string :black_is_zero, :limit => 10
      t.string :color_space_type, :limit => 25
      t.integer :num_channels, :limit => 4
      t.string :compression_type, :limit => 25
      t.string :lossless_compression, :limit => 10
      t.integer :compression_num_progressive_scans, :limit => 4
      t.string :file_size, :limit => 10
      t.string :bits_per_sample, :limit => 25
      t.string :planar_configuration, :limit => 50
      t.string :data_sample_format,  :limit => 50
      t.string :orientation,  :limit => 25
      t.string :pixel_aspect_ratio, :limit => 25
      t.string :vertical_pixel_size, :limit => 25
      t.string :horizontal_pixel_size, :limit => 25
      t.string :ihdr, :limit => 500
      t.string :text_entry, :limit => 500
      t.string :transparency_alpha, :limit => 50
      t.integer :height, :limit => 5
      t.string :phys, :limit => 255
      t.string :file_name, :limit => 1024
      t.integer :width, :limit => 5
      t.integer :file_id, :limit => 12
      t.integer :user_id, :limit => 7

      t.timestamps
    end
  end

  def self.down
    drop_table :png_metadatas
  end
end
