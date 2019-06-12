class Project < ApplicationRecord
  mount_uploader :image, PhotoUploader
end
