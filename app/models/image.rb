class Image < ActiveRecord::Base
  # validates_processing_of :image
  belongs_to :food

  mount_uploader :image, ImageUploader
end
