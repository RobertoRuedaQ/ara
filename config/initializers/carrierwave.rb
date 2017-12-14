CarrierWave.configure do |config|

  config.fog_credentials = {
    :provider => 'AWS',
    :aws_access_key_id     => Rails.application.secrets.aws_access_key_id,
    :aws_secret_access_key => Rails.application.secrets.aws_secret_access_key
  }

  if Rails.env.production?
    config.storage :fog
  else
    config.storage :file
  end

  config.cache_dir = "#{Rails.root}/tmp/uploads"                  # To let CarrierWave work on heroku

  config.fog_directory    = Rails.application.secrets.s3_bucket_name
end