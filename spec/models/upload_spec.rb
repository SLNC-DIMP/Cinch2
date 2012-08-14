require 'spec_helper'

describe Upload do
  before do
    @upload = FactoryGirl.create(:upload)
  end

  subject { @upload }

  describe "with a valid factory" do
    it { should be_valid }
  end

  describe "is invalid without a file to upload" do
    before { @upload.path = '' }
    it { should_not be_valid }
  end

  describe "is invalid without a file with the proper file extension" do
    before { @upload.path = File.open(File.join(Rails.root, 'spec', 'support', 'test_files', 'book_list.xml')) }
    it { should_not be_valid }
  end

  describe "is valid with a valid csv file to upload" do
    before { @upload.path = '/documents/file.csv' }
    it { should be_valid }
  end

  describe "is valid with a valid text file to upload" do
    before { @upload.path = '/documents/file2.txt' }
    it { should be_valid }
  end
end
