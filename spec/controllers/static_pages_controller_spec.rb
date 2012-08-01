require 'spec_helper'

describe StaticPagesController do

  describe "visit 'home' page" do
    it "returns http success" do
      visit root_path
      response.should be_success
    end
  end

  describe "visit 'about'" do
    it "returns http success" do
      visit about_path
      response.should be_success
    end
  end

  describe "visit 'project'" do
    it "returns http success" do
      visit project_path
      response.should be_success
    end
  end

  describe "visit 'faq'" do
    it "returns http success" do
      visit faq_path
      response.should be_success
    end
  end

end
