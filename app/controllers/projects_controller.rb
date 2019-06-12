class ProjectsController < ApplicationController
  def homepage
    @projects = Project.all
  end

  def download_pdf
    send_file(
      "#{Rails.root}/public/data/resume_iris_wolfisberg.pdf",
      filename: "resume_IW.pdf",
      type: "application/pdf"
    )
  end
end
