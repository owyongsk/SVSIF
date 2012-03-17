require 'spec_helper'

describe "Devises" do
  describe "GET /sign_in" do
    it "should show a sign_in page" do
      visit signin_path
      page.should have_content("Email")
      page.should have_content("Password")
    end
  end

  describe "GET /sign_up" do
    it "should have a sign_up page" do
      visit new_user_registration_path
      page.should have_content("Email")
      page.should have_content("Password")
      page.should have_content("Password confirmation")
    end
  end
end
