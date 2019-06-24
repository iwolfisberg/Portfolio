require 'yaml'

class ProjectsController < ApplicationController
  def homepage
    @projects = Project.all
    @skills = YAML.load_file('db/skills.yml')
  end

  def download_pdf
    if I18n.locale == :en
      send_file(
        "#{Rails.root}/public/data/resume_iris_wolfisberg.pdf",
        filename: "resume_IW.pdf",
        type: "application/pdf"
      )
    else
      send_file(
        "#{Rails.root}/public/data/cv_iris_wolfisberg.pdf",
        filename: "CV_IW.pdf",
        type: "application/pdf"
      )
    end
  end
end
