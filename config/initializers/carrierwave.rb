if Rails.env.test? or Rails.env.cucumber?
  CarrierWave.configure do |config|
    config.storage = :file
    config.enable_processing = false
  end
else
  CarrierWave.configure do |config|
    config.fog_credentials = {
      :provider               => 'AWS',       # required
      :aws_access_key_id      => ENV['AWS_ACCESS_KEY_ID'],       # required
      :aws_secret_access_key  => ENV['AWS_SECRET_ACCESS_KEY'],       # required
      :region => ENV['AWS_REGION']
    }
    config.fog_directory  =  ENV['SNACK_BUCKER']                  # required
    config.fog_attributes = {'Cache-Control'=>'max-age=315576000'} # optional, defaults to {}
    config.storage = :fog
    config.max_file_size     = 10.megabytes
  end
end