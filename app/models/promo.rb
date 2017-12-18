class Promo < ApplicationRecord
  belongs_to :category
  mount_uploader :imagen, ImagenUploader
  validates :title, :imagen, :description, :category, :price, presence: true
end
