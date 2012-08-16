class Uploads < ActiveRecord::Base
  has_one :user
  has_many :url_listings

  attr_accessible :path, :path_cache, :pdfa, :jpeg2000, :processed, :user_id

  mount_uploader :path, PathUploader

  validates_presence_of :path
  validates_integrity_of :path
  validates_processing_of :path
end
