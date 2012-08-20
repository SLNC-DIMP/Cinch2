class FileTypes < ActiveRecord::Base
  attr_accessible :file_type, :file_type_name
end
# == Schema Information
#
# Table name: file_types
#
#  id             :integer(4)      not null, primary key
#  file_type      :string(255)
#  file_type_name :string(255)
#  created_at     :datetime        not null
#  updated_at     :datetime        not null
#

