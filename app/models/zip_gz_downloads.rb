class ZipGzDownloads < ActiveRecord::Base
  attr_accessible :deletion_reminder, :downloaded, :path, :user_id
end
