class FileEventHistories < ActiveRecord::Base
  has_one :file_infos

  attr_accessible :event_id, :file_id
end
# == Schema Information
#
# Table name: file_event_histories
#
#  id         :integer(4)      not null, primary key
#  file_id    :integer(4)
#  event_id   :integer(4)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

