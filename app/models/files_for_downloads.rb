class FilesForDownloads < ActiveRecord::Base
  belongs_to :file_infos

  attr_accessible :processed, :url, :user_id, :user_uploads_id
end
