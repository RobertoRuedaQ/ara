class Promo < ApplicationRecord
  belongs_to :category
  mount_uploader :imagen, ImagenUploader

  def notification
  require 'fcm'
    fcm = FCM.new(Rails.application.secrets.firebase_server_token)
    response = fcm.send_to_topic("test",
            data: {message: "This is a FCM Topic Message!")
  end
end
