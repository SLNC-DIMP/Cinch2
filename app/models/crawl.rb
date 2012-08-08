class Crawl < ActiveRecord::Base
  belongs_to :user
#  has_many :url_listings
  attr_accessible :url, :pdfa, :jpeg2000, :processed, :user_id

  validates_presence_of :url, :on => :create
  validates_format_of :url, :with => URI::regexp(%w(http https)), :on => :create,
                      :message => " - Please enter a valid url starting with http(s)://"
end
