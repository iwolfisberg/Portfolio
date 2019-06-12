Rails.application.routes.draw do
  root to: 'projects#homepage'
  get 'download_pdf', to: "projects#download_pdf"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
