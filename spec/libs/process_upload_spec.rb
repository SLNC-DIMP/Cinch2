require 'spec_helper'
require 'process_upload'

class TestDummy
end

describe ProcessUpload do
  before(:each) do
    @test = TestDummy.new
    @test.extend(ProcessUpload)
  end

  describe "File Reading" do
    before { @files = File.join(
        Rails.root, 'spec', 'support', 'test_files', 'book_list.csv') }

    it "reads a file returns an array of links on success" do
      @test.read_file(@files).should eq ["http://slnc.org/fake.pdf\n", "http://slnc.org/test.pdf"]
    end

    it "counts the number links in a file" do
      @test.count_links(@files).should eq 2
    end
  end

  it "read a file and returns nil on file error" do
    @test.read_file('stuff.txt').should eq nil
  end

  it "should match empty strings" do
    @test.line_empty(' ').should_not be nil
  end

  it "should match strings that only contain \n" do
    @test.line_empty("\n").should_not be nil
  end

  it "should ignore non-empty strings" do
    @test.line_empty('http://ncdcr.gov').should eq nil
  end

  it "returns true on a valid link" do
    @test.valid_link?('http://ncdcr.gov').should be true
  end

  it "returns false on an invalid link" do
    @test.valid_link?('ncdcr.z').should be false
  end

end