class FilesForDownloads < ActiveRecord::Base
  attr_accessible :processed, :url, :user_id, :user_uploads_id
end
