class Promo < ApplicationRecord
  belongs_to :category
  mount_uploader :imagen, ImagenUploader

  def notification
      require 'fcm'
        fcm = FCM.new(Rails.application.secrets.firebase_server_token)

        registration_ids = ['1']
        options = {
          data: { notification: {title: "hello", body: "world", icon: "myicon"},
          priority: "high"}
        }
        response = fcm.send(registration_ids, options)
        render json: response
  end
end
