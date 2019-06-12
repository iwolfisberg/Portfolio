class ProjectsController < ApplicationController
  def homepage
    @projects = Project.all
  end
end
