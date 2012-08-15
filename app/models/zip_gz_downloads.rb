class ZipGzDownloads < ActiveRecord::Base
  belongs_to :user

  attr_accessible :deletion_reminder, :downloaded, :path, :user_id
end
