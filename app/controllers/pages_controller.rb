class PagesController < ApplicationController
  def home
    @title = "Welcome to SVIF"
    @profile = current_user.profile if user_signed_in?
  end
end
