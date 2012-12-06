class FilesForDownloads < ActiveRecord::Base
  include ProcessUpload
  belongs_to :file_infos

  attr_accessible :processed, :url, :user_id, :user_uploads_id

end
# == Schema Information
#
# Table name: files_for_downloads
#
#  id              :integer(4)      not null, primary key
#  url             :string(1024)
#  user_uploads_id :integer(8)
#  user_id         :integer(8)
#  processed       :integer(4)      default(0)
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#

