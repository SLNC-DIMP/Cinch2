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
# == Schema Information
#
# Table name: jpg_metadatas
#
#  id                   :integer(4)      not null, primary key
#  author               :string(255)
#  color_space          :string(25)
#  component_one        :string(150)
#  component_two        :string(150)
#  component_three      :string(150)
#  compression          :string(25)
#  content_type         :string(50)
#  data_precision       :string(15)
#  date_time            :string(50)
#  exif_image_height    :string(25)
#  exif_image_width     :string(25)
#  last_modified        :string(50)
#  number_of_components :string(5)
#  orientation          :string(75)
#  software             :string(75)
#  x_resolution         :string(50)
#  y_resolution         :string(50)
#  resourcename         :string(255)
#  file_id              :integer(4)
#  user_id              :integer(8)
#  created_at           :datetime        not null
#  updated_at           :datetime        not null
#

