class FileEventHistories < ActiveRecord::Base
  has_one :file_infos

  attr_accessible :event_id, :file_id
end
