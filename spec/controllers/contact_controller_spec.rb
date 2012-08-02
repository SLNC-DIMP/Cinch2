require 'spec_helper'

describe ContactController do

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact', :new
      response.should be_success
    end
  end

end
