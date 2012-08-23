require 'spec_helper'
require 'cancan/matchers'

describe Upload do
  before do
    @uploads = FactoryGirl.create(:uploads)
  end

  subject { @uploads }

  describe "with a valid factory" do
    it { should be_valid }
  end

  describe "is invalid without a file to uploads" do
   # before { @uploads.path = nil }
    it { should_not allow_value(nil).for(:path) }
  end

  describe "is invalid with a file with an improper file extension" do
    before { @uploads.path = File.open(
        File.join(
            Rails.root, 'spec', 'support', 'test_files', 'book_list.xml')) }
    it { should_not be_valid }
  end

  describe "is valid with a valid csv file to uploads" do
    before { @uploads.path = File.open(
        File.join(
            Rails.root, 'spec', 'support', 'test_files', 'book_list.csv')) }
    it { should be_valid }
  end

  # .txt is factory default
  describe "is valid with a valid text file to uploads" do
    it { should be_valid }
  end

end
