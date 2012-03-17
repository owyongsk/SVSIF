class ProfilesController < ApplicationController
  def index
    @title = "All profiles"
    @profiles = Profile.page(params[:page]).per(5)
  end
end
