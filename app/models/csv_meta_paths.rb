class CsvMetaPaths < ActiveRecord::Base
  belongs_to :user

  attr_accessible :path, :user_id, :zipped
end
# == Schema Information
#
# Table name: csv_meta_paths
#
#  id         :integer(4)      not null, primary key
#  user_id    :integer(8)
#  path       :string(255)
#  zipped     :integer(4)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

