require 'spec_helper'

describe GifMetadatas do
  pending "add some examples to (or delete) #{__FILE__}"
end
# == Schema Information
#
# Table name: gif_metadatas
#
#  id                                :integer(4)      not null, primary key
#  black_is_zero                     :string(10)
#  color_space_type                  :string(25)
#  num_channels                      :integer(4)
#  compression_type                  :string(25)
#  lossless_compression              :string(10)
#  compression_num_progressive_scans :integer(4)
#  file_size                         :integer(4)
#  data_sample_format                :string(25)
#  horizontal_pixel_offset           :integer(8)
#  orientation                       :string(25)
#  vertical_pixel_offset             :integer(8)
#  graphic_control_extension         :string(500)
#  image_descriptor                  :string(300)
#  height                            :integer(8)
#  file_name                         :string(1024)
#  width                             :integer(8)
#  file_id                           :integer(4)
#  user_id                           :integer(8)
#  created_at                        :datetime        not null
#  updated_at                        :datetime        not null
#

