class Promo < ApplicationRecord
  belongs_to :category
  mount_uploader :imagen, ImagenUploader
end
