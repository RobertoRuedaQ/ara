class Promo < ApplicationRecord
  belongs_to :category
  mount_uploader :imagen, ImagenUploader
  validate :title, :imagen, :description, :category, :price

  def notification
  require 'fcm'
    fcm = FCM.new(Rails.application.secrets.firebase_server_token)
		fcm.send_with_notification_key("/topics/test",
            data: {title: "This is a FCM Topic Message!"})
  end
end
