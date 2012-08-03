class Upload < ActiveRecord::Base
  belongs_to :user
  attr_accessible :path, :pdfa, :jpeg2000, :processed, :user_id

  validates_presence_of :path, :on => :create
  validates_format_of :path, :with => /\.(txt|cvs)$/i, :on => :create,
    :message => "Only .txt and .cvs file extensions are allowed"
end
