CarrierWave.configure do |config|
  case Rails.env
    when 'docker'
      # config.fog_provider = 'fog/aws'
      config.fog_credentials = {
        provider: 'AWS',
        aws_access_key_id: ENV['MINIO_ACCESS_KEY'],
        aws_secret_access_key: ENV['MINIO_SECRET_KEY'],
        region: 'us-east-1',
        endpoint: 'http://minio:9000',
        path_style: true,
      }
      config.asset_host = 'http://localhost:9000/minio-sample-carrierwave'
      config.fog_directory = 'minio-sample-carrierwave'
    else
    # 他の環境をここに
  end
end
