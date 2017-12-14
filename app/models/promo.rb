class Promo < ApplicationRecord
  belongs_to :category
  mount_uploader :imagen, ImagenUploader

  def notification
  require 'fcm'
    fcm = FCM.new(Rails.application.secrets.firebase_server_token)
    registration_ids = ['eGSszGnR9rQ:APA91bGFQ4yVywRyxtmiUrURHpPlbPSdKgVy065vCNvN783YLzre-efQcaGsexoO0tIUJjiMym_17QWtzxXjQBw-h-yKtkcVkP0rG_cRxX_zq2b-vvAh9S9oUzj6cFp5mPeDCwr4r4fz']
    options = {data: {title: "test"}, collapse_key: "updated_score"}
    fcm.send(registration_ids, options)
  end
end
