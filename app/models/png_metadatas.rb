class PngMetadatas < ActiveRecord::Base
  belongs_to :file_infos

  attr_accessible :black_is_zero,
                  :color_space_type,
                  :num_channels,
                  :compression_type,
                  :lossless_compression,
                  :compression_num_progressive_scans,
                  :file_size,
                  :bits_per_sample,
                  :planar_configuration,
                  :data_sample_format,
                  :orientation,
                  :pixel_aspect_ratio,
                  :vertical_pixel_size,
                  :horizontal_pixel_size,
                  :ihdr,
                  :text_entry,
                  :transparency_alpha,
                  :height,
                  :phys,
                  :file_name,
                  :width,
                  :file_id,
                  :user_id
end
