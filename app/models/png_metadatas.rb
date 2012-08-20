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
# == Schema Information
#
# Table name: png_metadatas
#
#  id                                :integer(4)      not null, primary key
#  black_is_zero                     :string(10)
#  color_space_type                  :string(25)
#  num_channels                      :integer(4)
#  compression_type                  :string(25)
#  lossless_compression              :string(10)
#  compression_num_progressive_scans :integer(4)
#  file_size                         :string(10)
#  bits_per_sample                   :string(25)
#  planar_configuration              :string(50)
#  data_sample_format                :string(50)
#  orientation                       :string(25)
#  pixel_aspect_ratio                :string(25)
#  vertical_pixel_size               :string(25)
#  horizontal_pixel_size             :string(25)
#  ihdr                              :string(500)
#  text_entry                        :string(500)
#  transparency_alpha                :string(50)
#  height                            :integer(8)
#  phys                              :string(255)
#  file_name                         :string(1024)
#  width                             :integer(8)
#  file_id                           :integer(4)
#  user_id                           :integer(8)
#  created_at                        :datetime        not null
#  updated_at                        :datetime        not null
#

