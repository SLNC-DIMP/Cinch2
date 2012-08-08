class Crawl < ActiveRecord::Base
  belongs_to :user
#  has_many :url_listings
  attr_accessible :url, :pdfa, :jpeg2000, :processed, :user_id

  validates_presence_of :url, :on => :create
  validates_format_of :url, :with => /\^http(s):\/\//i, :on => :create,
                      :message => "Please add http(s):// to the front of your url"
end
