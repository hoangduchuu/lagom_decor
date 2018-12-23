CarrierWave.configure do |config|
  if Rails.env.staging? || Rails.env.production?
    config.fog_provider = 'fog/aws' 
    config.fog_credentials = {
      :provider => 'AWS',
      :aws_access_key_id => 'your access key id goes here',
      :aws_secret_access_key => 'your secret access key goes here',
      :region => 'your region goes here', #you can choose any region
      :endpoint => 'your endpoint goes here' #endpoint depends on the service you choose (amazon or digital ocean)
    }
    config.fog_directory = 'your bucket name'
    config.storage = :fog
  else
    config.storage = :file
    config.enable_processing = Rails.env.development?
  end
end