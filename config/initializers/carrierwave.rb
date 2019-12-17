CarrierWave.configure do |config|
<<<<<<< HEAD

    config.fog_provider = 'fog/aws'                  
    config.fog_credentials = {
      provider:              'AWS',                        
      aws_access_key_id:     ENV["AWS_ACCESS_KEY_ID"],         

      aws_secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"],        

      region:                ENV["AWS_REGION"]    

    }
    config.fog_directory  = ENV["AWS_BUCKET_NAME"] 



end
=======
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider:              'AWS',
    aws_access_key_id:     ENV['S3_KEY'],
    aws_secret_access_key: ENV['S3_SECRET'],
    region:                ENV['S3_REGION'],
  }
  config.fog_directory  = ENV['S3_BUCKET']
end 
>>>>>>> 507808c529ded6796ab0db630f544bd4adb31f36
