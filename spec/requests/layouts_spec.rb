require 'spec_helper'

describe "Layouts" do
  describe "GET /" do
    it "should have a navbar at the top" do
      visit signin_path
      page.should have_content("Sign up")
      page.should have_content("Sign in")
    end
  end
end
