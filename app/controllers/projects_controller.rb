class ProjectsController < ApplicationController
  skip_before_filter :authorize, :only => [:index, :show]
  
  def index
    @projects = Project.all
  end
  
  def new
    @project = Project.new
  end
  
  def create
    @project = Project.new(params[:project])
    if @project.save
      redirect_to project_path(@project.id)
    else
      render "new"
    end
  end
  
  def show
    @project = Project.find(params[:id])
  end
  
  def edit
    @project = Project.find(params[:id])
  end
  
  def update
      @project = Project.find(params[:id])
    
      if @project.update_attributes(params[:project])
        redirect_to project_path(@project.id)
      else
        render "edit"
      end
    end
end
