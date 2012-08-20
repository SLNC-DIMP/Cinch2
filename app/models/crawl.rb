class Crawl < ActiveRecord::Base
  belongs_to :user
  has_many :url_listings

  attr_accessible :url, :pdfa, :jpeg2000, :processed, :user_id

  validates_presence_of :url, :on => :create
  validates_format_of :url, :with => URI::regexp(%w(http https)), :on => :create,
                      :message => " - Please enter a valid url starting with http(s)://"
end
# == Schema Information
#
# Table name: crawls
#
#  id         :integer(4)      not null, primary key
#  url        :string(1024)
#  pdfa       :integer(4)      default(0)
#  jpeg2000   :integer(4)      default(0)
#  processed  :integer(4)      default(0)
#  user_id    :integer(8)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

