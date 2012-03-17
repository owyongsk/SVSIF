class ProfilesController < ApplicationController
  before_filter :profile_init, :only => [:edit, :update, :show]
  #before_filter :authenticate

  def index
    @title = "All profiles"
    @profiles = Profile.page(params[:page]).per(5)
  end

  def show
    @title = @profile.name
  end

  def edit
    @title = "Edit user"
  end

  def update
    if @profile.update_attributes(params[:profile])
      flash[:success] = "Profile successfully updated."
      redirect_to @profile
    else
      @title = "Edit user"
      render 'edit'
    end
  end

  protected
    def profile_init
      @profile = Profile.find(params[:id])
    end
end
