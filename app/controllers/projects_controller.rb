class ProjectsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @projects = Project.page(params[:page]).per(10)
    @title = "All Projects"
  end

  def new
    @title = "Create a new project"
    @project = current_user.profile.projects.new
  end

  def create
    @project = current_user.profile.projects.create(params[:project])
    if @project
      flash[:success] = "Project was successfully created."
      redirect_to (@project)
    else
      @title = "Create a new project"
      render 'new'
    end
  end

  def show
    @project = Project.find(params[:id])
    @title = @project.title
  end
end
