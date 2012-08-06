require 'carrierwave/orm/activerecord'

class Upload < ActiveRecord::Base
  attr_accessible :path, :path_cache, :pdfa, :jpeg2000, :processed, :user_id
  belongs_to :user
  mount_uploader :path, PathUploader

  validates_presence_of :path
  validates_integrity_of :path
  validates_processing_of :path
end
