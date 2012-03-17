require 'spec_helper'

describe ProfilesController do
  render_views

  describe "GET 'index'" do
    it "should be successful" do
      get :index
      response.should be_success
    end
  end

  describe "GET 'show'" do
    before(:each) do
      @user = Factory(:user)
    end

    it "should be successful" do
      get :show, :id => @user.profile
      response.should be_success
    end
  end

  #describe "GET 'edit'" do
    #before(:each) do
      #@user = Factory(:user)
    #end
  #end
end
