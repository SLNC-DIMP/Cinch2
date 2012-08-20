class ZipGzDownloads < ActiveRecord::Base
  belongs_to :user

  attr_accessible :deletion_reminder, :downloaded, :path, :user_id
end
# == Schema Information
#
# Table name: zip_gz_downloads
#
#  id                :integer(4)      not null, primary key
#  user_id           :integer(8)
#  path              :string(500)
#  downloaded        :integer(4)      default(0)
#  deletion_reminder :integer(4)      default(0)
#  created_at        :datetime        not null
#  updated_at        :datetime        not null
#

