class Upload < ActiveRecord::Base
  has_one :user
  has_many :files_for_downloads
  has_many :url_listings

  attr_accessible :path, :path_cache, :pdfa, :jpeg2000, :processed, :user_id

  mount_uploader :path, PathUploader

  validates_presence_of :path
  validates_integrity_of :path
  validates_processing_of :path
end
# == Schema Information
#
# Table name: uploads
#
#  id         :integer(4)      not null, primary key
#  path       :string(250)
#  pdfa       :integer(4)      default(0)
#  jpeg2000   :integer(4)      default(0)
#  processed  :integer(4)      default(0)
#  user_id    :integer(8)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

