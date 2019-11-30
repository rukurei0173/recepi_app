class Post < ApplicationRecord
  mount_uploader :image_name, ImagesUploader
  validates :content, {presence:true, length: {maximum: 1000}}
end
