class ProjectsController < ApplicationController
  respond_to :json

  def show
    @project = Project.find(params[:id])
    respond_with @project
  end

  def index
    @projects = Project.all
    respond_with @projects
  end

  def create
    @project = Project.create(project_params)
    respond_with @project
  end

  def update
    @project = Project.find(params[:id])
    @project.update_attributes(project_params)
    respond_with @project
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    respond_with @project
  end

  private

  def project_params
    params.require(:project).permit(:name, :description)
  end
end
