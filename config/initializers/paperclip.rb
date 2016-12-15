PAPERCLIP_OPTS = case Rails.env
  when 'docker'
    {
      icon: {
        styles: {
          original: '1920x1680>',
        },
        storage: :s3,
        s3_protocol: :http,
        s3_region: 'us-east-1',
        s3_credentials: "#{Rails.root}/config/s3.yml",
        s3_host_name: 'localhost:9000',
        s3_options: {
          endpoint: 'http://minio:9000',
          force_path_style: true,
        },
        path: ":attachment/:id/:style.:extension",
        url: ':s3_path_url',
      }
    }
  else
    {}
  end
