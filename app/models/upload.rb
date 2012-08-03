class Upload < ActiveRecord::Base
  belongs_to :user
  attr_accessible :path, :pdfa, :jpeg2000, :processed, :user_id

  validates_format_of :path, :with => /\.(txt|cvs)$/i, :on => :create,
    :message => "- Please choose a .txt or .csv file"
end
