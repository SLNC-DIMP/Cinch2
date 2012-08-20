require 'spec_helper'
require 'cancan/matchers'

describe Crawl do
  before do
    @crawl = FactoryGirl.create(:crawl)
  end

  subject { @crawl }

  describe "with a valid factory" do
    it { should be_valid }
  end

  describe "is invalid without a url" do
    subject { Crawl.new }    # seems to need this due to the :on => create context
    it { should validate_presence_of(:url) }
  end

  describe "is invalid without a 'correct' url" do
    subject { Crawl.new }
    it { should_not allow_value('stuff.i').for(:url) }
  end

  describe "is valid with a 'correct' url" do
    before { @crawl.url = 'http://ncdcr.gov'}
    it { should be_valid }
  end
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

