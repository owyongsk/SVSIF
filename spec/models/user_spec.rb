require 'spec_helper'

describe User do
  it "should create a new profile when user signs up" do
    @user = Factory(:user)
    @user.profile.user_id.should == @user.id
  end
end
