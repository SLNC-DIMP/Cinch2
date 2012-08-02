require 'spec_helper'

describe Message do
  before do
    @message = FactoryGirl.build(:message)
  end

  subject { @message }

  describe "with a valid factory" do
      it { should be_valid }
  end

  describe "is invalid without a contact name" do
    before { @message.name = nil }
    it { should_not be_valid }
  end

  describe "is invalid without an email address" do
    before { @message.email = nil }
    it { should_not be_valid }
  end

  describe "is invalid without a subject line" do
    before { @message.subject = nil }
    it { should_not be_valid }
  end

  describe "is invalid without a message body" do
    before { @message.body = nil}
    it { should_not be_valid }
  end

  describe "is invalid without a 'valid' email address" do
    before { @message.email = 'dean#email'}
    it { should_not be_valid }
  end

  it "should have a contact name" do
    @message.name.should  == 'Dean'
  end

  it "should have a valid email" do
    @message.email.should  == 'dean_-@example.com'
  end

  it "should have a valid subject line" do
    @message.subject == 'Test'
  end

  it "should have a valid message body" do
     @message.body == 'This looks really cool!'
  end
end