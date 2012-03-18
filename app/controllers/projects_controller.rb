class ProjectsController < ApplicationController
  def index
    @projects = Project.page(params[:page]).per(10)
    @title = "All Projects"
  end

  
end
