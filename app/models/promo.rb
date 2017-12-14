class Promo < ApplicationRecord
  belongs_to :category
  mount_uploader :imagen, ImagenUploader

  def notification
  require 'fcm'
    fcm = FCM.new(Rails.application.secrets.firebase_server_token)
    registration_ids = ['dJq10bC03mg:APA91bE56AS7u0C748rLjkEwKHKKYT59ibyQ6RPjKNzxKGq_ciBZHJO2UFIOz1jNqExs891VhGcF5qVdnqe-_uatnRgeU6UO_gBWMMUe1ke4Npb1on3Z-xtx3t1T-7KFEiwaE1VBFuO3']
    options = {data: {title: "test"}, collapse_key: "updated_score"}
    fcm.send(registration_ids, options)
  end
end
