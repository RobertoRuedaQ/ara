class Promo < ApplicationRecord
  belongs_to :category
  mount_uploader :imagen, ImagenUploader

  def notification
      require 'fcm'
        fcm = FCM.new(Rails.application.secrets.firebase_server_token)
        options = {data: {title: "test"}, collapse_key: "updated_score"}
        fcm.send(options)
  end
end
