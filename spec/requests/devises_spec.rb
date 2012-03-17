require 'spec_helper'

describe "Devises" do
  describe "GET /signin" do
    it "should show a signin page" do
      visit signin_path
      page.should have_content("Email")
      page.should have_content("Password")
    end
  end
end
