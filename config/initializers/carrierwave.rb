CarrierWave.configure do |config|
  if Rails.env.staging? || Rails.env.production?
    config.fog_provider = 'fog/aws' 
    config.fog_credentials = {
      :provider => 'AWS',
      :aws_access_key_id => 'HAGSUICKMJGASFENR7CD',
      :aws_secret_access_key => 'YKMnGtd0bCfWZ33F8+K6aAwBRZr84CwT6AXb7a6o3T4',
      :region => 'sgp1',
      :endpoint => 'https://sgp1.digitaloceanspaces.com'
    }
    config.fog_directory = 'rordev'
    config.storage = :fog
  else
    config.storage = :file
    config.enable_processing = Rails.env.development?
  end
end