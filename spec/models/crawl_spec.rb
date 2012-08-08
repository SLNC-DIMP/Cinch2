require 'spec_helper'

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
