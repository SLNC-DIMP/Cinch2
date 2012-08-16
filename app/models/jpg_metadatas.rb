class JpgMetadatas < ActiveRecord::Base
  has_one :file_infos

  attr_accessible :author,
      :color_space,
      :component_one,
      :component_two,
      :component_three,
      :compression,
      :content_type,
      :data_precision,
      :date_time,
      :exif_image_height,
      :exif_image_width,
      :last_modified,
      :number_of_components,
      :orientation,
      :software,
      :x_resolution,
      :y_resolution,
      :resourcename,
      :file_id,
      :user_id
end
