class Project < ApplicationRecord
  translates :description
  mount_uploader :image, PhotoUploader
end
